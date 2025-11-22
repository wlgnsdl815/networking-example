# 네트워킹 예제 프로젝트

아래 패키지를 사용한 네트워킹 예제 프로젝트입니다.

- Dio — HTTP 클라이언트로 요청/응답 처리, 인터셉터, 타임아웃 등 네트워크 기본 기능 담당
- Retrofit — API 엔드포인트를 인터페이스 기반으로 선언형으로 작성할 수 있게 도와주는 네트워크 레이어 자동 생성기
- JsonSerializable — 서버 JSON을 Dart 객체로 변환해주는 직렬화/역직렬화 자동 생성기
- Freezed — 불변 데이터 클래스(모델) 생성, copyWith, equality, sealed class 등 모델 구조 관리

이 프로젝트는 공개 더미 API 서비스인  
[JSONPlaceholder](https://jsonplaceholder.typicode.com)에서 데이터를 가져와 네트워킹 예제를 구성합니다.
