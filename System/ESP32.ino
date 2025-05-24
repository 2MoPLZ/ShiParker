#include <WiFi.h>
#include <PubSubClient.h>

// WiFi 설정
const char* ssid = "Seheon의 iPhone";
const char* password = "1q2w3e4r%";

// MQTT 설정
const char* mqtt_server = "172.20.10.2";
const int mqtt_port = 1883;
const char* mqtt_client_id = "vehicle-00";  // 이 ESP32는 vehicle-00

WiFiClient espClient;
PubSubClient client(espClient);

HardwareSerial& uart = Serial2; // UART2 사용

typedef struct __attribute__((__packed__)) ParkingSystemPacket {
  uint8_t start_byte;       // 0xAA
  uint8_t car_status;       
  double car_current_x;     
  double car_current_y;
  double car_target_x;
  double car_target_y;
  uint8_t car_command;      
  uint8_t crc;              // checksum
} ParkingSystemPacket;

ParkingSystemPacket currentPacket = {
  0xAA, 0, 0.0, 0.0, 0.0, 0.0, 0, 0
};

uint8_t calculate_checksum(const uint8_t* data, size_t length) {
  uint8_t sum = 0;
  for (size_t i = 0; i < length; ++i) {
    sum ^= data[i];
  }
  return sum;
}

void initWiFi() {
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("\n[WiFi] Connected: " + WiFi.localIP().toString());
}

void mqttCallback(char* topic, byte* payload, unsigned int length) {
  String topicStr = String(topic);
  Serial.print("[MQTT] Received Message [");
  Serial.print(topic);
  Serial.print("]: ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();

  if (topicStr == String(mqtt_client_id) + "/command") {
    int command = atoi((char*)payload);
    Serial.print("[CMD] Received command: ");
    Serial.println(command);
    currentPacket.car_command = command;

    uint8_t* ptr = (uint8_t*)&currentPacket;
    currentPacket.crc = calculate_checksum(ptr, sizeof(ParkingSystemPacket) - 1);
    uart.write(ptr, sizeof(ParkingSystemPacket));
    Serial.println("[UART] SEND (crc : " + String(currentPacket.crc) + ")");
  }

  else if (topicStr == String(mqtt_client_id) + "/target_position") {
    String payload_str;
    for (unsigned int i = 0; i < length; ++i) payload_str += (char)payload[i];
    float x, y;
    if (sscanf(payload_str.c_str(), "%f %f", &x, &y) == 2) {
      currentPacket.car_target_x = x;
      currentPacket.car_target_y = y;
      Serial.println("[MQTT] Received target_position: " + String(x) + ", " + String(y));
    } else {
      Serial.println("[WARN] target_position error: " + payload_str);
    }
  }
}

void reconnectMQTT() {
  while (!client.connected()) {
    Serial.print("[MQTT] 연결 시도 중...");
    if (client.connect(mqtt_client_id)) {
      Serial.println(" 연결 성공");
      client.subscribe((String(mqtt_client_id) + "/command").c_str());
      client.subscribe((String(mqtt_client_id) + "/target_position").c_str());

    } else {
      Serial.print(" 실패, rc=");
      Serial.print(client.state());
      Serial.println(" 5초 후 재시도");
      delay(5000);
    }
  }
}

void publishMessage(const char* topic, const String& payload) {
  if (client.connected()) {
    client.publish(topic, payload.c_str());
    Serial.println("[MQTT] Publish: " + String(topic) + " -> " + payload);
  }
}

void processPacket(const ParkingSystemPacket& pkt) {
  String status_topic = String(mqtt_client_id) + "/status";
  publishMessage(status_topic.c_str(), String(pkt.car_status));

  String current_topic = String(mqtt_client_id) + "/current_position";
  String current_payload = String(pkt.car_current_x, 3) + " " + String(pkt.car_current_y, 3);
  publishMessage(current_topic.c_str(), current_payload);
}

void setup() {
  Serial.begin(9600);
  uart.begin(9600, SERIAL_8N1, 16, 17); // RX=16, TX=17
  initWiFi();
  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(mqttCallback);
}

void loop() {
  if (WiFi.status() != WL_CONNECTED) initWiFi();
  if (!client.connected()) reconnectMQTT();
  client.loop();

  // UART 수신 처리
  static uint8_t buffer[sizeof(ParkingSystemPacket)];
  static size_t index = 0;

  while (uart.available()) {
    uint8_t b = uart.read();
    if (index == 0 && b != 0xAA) continue; // 시작 바이트 검사
    buffer[index++] = b;
    if (index == sizeof(ParkingSystemPacket)) {
      ParkingSystemPacket* pkt = (ParkingSystemPacket*)buffer;
      uint8_t crc = calculate_checksum(buffer, sizeof(ParkingSystemPacket) - 1);
      if (crc == pkt->crc) {
        Serial.println("[UART] 패킷 수신 완료");
        processPacket(*pkt);
        currentPacket = *pkt; // 현재 상태 업데이트
      } else {
        Serial.println("[UART] CRC 오류");
      }
      index = 0; // 버퍼 초기화
    }
  }

  // 테스트 패킷 전송
  // static unsigned long lastLogTime = 0;
  // static unsigned long lastTestPublishTime = 0;
  // const unsigned long logInterval = 3000;
  // const unsigned long publishInterval = 10000;

  // if (millis() - lastLogTime >= logInterval) {
  //   lastLogTime = millis();
  //   Serial.println("==== Current Packet ====");
  //   Serial.println("Status       : " + String(currentPacket.car_status));
  //   Serial.println("Current Pos  : " + String(currentPacket.car_current_x, 3) + ", " + String(currentPacket.car_current_y, 3));
  //   Serial.println("Target Pos   : " + String(currentPacket.car_target_x, 3) + ", " + String(currentPacket.car_target_y, 3));
  //   Serial.println("Command      : " + String(currentPacket.car_command));
  //   Serial.println("CRC          : " + String(currentPacket.crc));
  //   Serial.println("========================");
  // }

  // if (millis() - lastTestPublishTime >= publishInterval) {
  //   lastTestPublishTime = millis();
    
  //   String status_topic = String(mqtt_client_id) + "/status";
  //   publishMessage(status_topic.c_str(), String(currentPacket.car_status));

  //   String current_topic = String(mqtt_client_id) + "/current_position";
  //   String current_payload = String(currentPacket.car_current_x, 3) + " " + String(currentPacket.car_current_y, 3);
  //   publishMessage(current_topic.c_str(), current_payload);
  // }
}
