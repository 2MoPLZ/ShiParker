#!/bin/bash
set -e


# 1. Mosquitto
sudo apt update
sudo apt install -y mosquitto mosquitto-clients

# 2. mosquitto.conf
sudo tee /etc/mosquitto/mosquitto.conf > /dev/null <<EOF
persistence true
persistence_location /var/lib/mosquitto/

log_dest file /var/log/mosquitto/mosquitto.log

listener 1883
allow_anonymous true
EOF

if command -v ufw >/dev/null 2>&1; then
    sudo ufw allow 1883
fi

sudo systemctl restart mosquitto
sudo systemctl enable mosquitto
