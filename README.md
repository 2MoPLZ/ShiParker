# 자율주행 프로젝트

## 팀원

| 김민 | 김준혁 | 류병민 | 이윤기 | 오동걸 | 호세헌 |
|:----:|:------:|:------:|:------:|:------:|:------:|
| <img src="https://github.com/min-kim-oss.png" style="width:100px; height:100px;"> | <img src="https://github.com/knujhk.png" style="width:100px; height:100px;"> | <img src="https://github.com/bmryu0501.png" style="width:100px; height:100px;"> | <img src="https://github.com/yg654.png" style="width:100px; height:100px;"> | <img src="https://github.com/fepick.png" style="width:100px; height:100px;"> | <img src="https://github.com/seheonnn.png" style="width:100px; height:100px;"> |
| Lead<br/> PID 제어 알고리즘 | 모터 드라이버 | HARA, KANO | FSM | 홀센서 드라이버 | ESP32, System |
| [min-kim-oss](https://github.com/min-kim-oss) | [knujhk](https://github.com/knujhk) | [bmryu0501](https://github.com/bmryu0501) | [yg654](https://github.com/yg654) | [fepick](https://github.com/fepick) | [seheonnn](https://github.com/seheonnn) |

## 아키텍처
<img width="821" alt="HW" src="https://github.com/user-attachments/assets/811c8175-b273-472b-9620-8774ef405755" />
<img width="821" alt="FSM" src="https://github.com/user-attachments/assets/956aa789-f2be-4fc5-b0a9-0dd1f27a33e1" />


## Description

TC275 (RTOS):
PID 제어 알고리즘을 기반으로 자율 주행 차량의 동작을 구현합니다.
초음파 센서와 홀 센서로부터 입력을 받아 모터를 제어합니다.

Raspberry Pi:
MQTT 브로커 역할을 수행하며, 실시간 데이터 표시 및 시스템 모니터링을 위한 UI를 구동합니다.
## 브랜치 구조

```
main
└── develop
    ├── TC275
    │   ├── feat/#이슈번호
    │   └── fix/#이슈번호
    ├── System
    │   ├── feat/#이슈번호
    │   └── fix/#이슈번호
    ├── Arduino
    │   ├── feat/#이슈번호
    │   └── fix/#이슈번호
    └── TC275
        ├── feat/#이슈번호
        └── fix/#이슈번호
```

## 커밋 컨벤션
```
ex) feat: 초음파 인식 기능 구현
```

| 태그이름   | 내용                                                                  |
| ---------- | --------------------------------------------------------------------- |
| `feat`     | 새로운 기능을 추가할 경우                                             |
| `fix `     | 버그를 고친 경우                                                      |
| `!hotfix`  | 급하게 치명적인 버그를 고쳐야하는 경우                                |
| `refactor` | 코드 리팩토링 (코드 스타일 변경, 파일명 수정... 프로덕션 코드 변경 X) |
| `docs`     | 문서를 수정한 경우                                                    |
| `test`     | 테스트 추가, 테스트 리팩토링(프로덕션 코드 변경 X)                    |
| `cicd`     | 배포 방식 수정 및 새로 추가 / 기존 배포 스크립트 수정                 |

## 이슈 기반 개발
1. 이슈 생성
- 모든 작업자는 본인이 수행할 작업에 대해 GitHub Issue를 생성합니다.
- 작업 내용은 구체적으로 작성하며, 이슈는 기능 단위로 쪼갭니다.

2. 브랜치 생성
- 작업자는 아래 규칙에 따라 브랜치를 생성합니다.
- 형식: feat/이슈번호 또는 fix/이슈번호 등 (작업 유형에 따라 접두어 변경)
    - 예시: feat/42, fix/17

3. 개발 및 커밋
- 커밋 메시지는 Conventional Commits 규칙을 따릅니다.
    - 예시: feat: 로그인 API 구현 (#42)

4. PR 생성 및 리뷰
- 작업 완료 후 Pull Request를 생성하고, 관련 이슈를 자동으로 닫기 위해 PR 본문에 Closes #이슈번호를 명시합니다.
- PR 생성 시 GitHub Actions가 자동으로 리뷰어를 할당합니다.
- 리뷰어는 코드 리뷰 후 승인(Approve) 또는 요청 변경(Request Changes) 을 합니다.

5. 병합(Merge)

- 리뷰가 승인되면 작업자는 develop 브랜치로 병합합니다.
- 병합 후 브랜치는 삭제합니다.


