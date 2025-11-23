# 네트워킹 예제 프로젝트

Dio + Retrofit + JsonSerializable + Freezed + Dartz + Riverpod을 활용해  
클린 아키텍처 기반으로 네트워킹 흐름을 연습하는 예제 프로젝트입니다.

이 프로젝트는 공개 더미 API 서비스인  
[JSONPlaceholder](https://jsonplaceholder.typicode.com) 의 `/posts` 엔드포인트를 사용해  
게시글 리스트/상세 데이터를 가져오는 흐름을 구현합니다.

---

## 사용 기술 스택

- **Dio**  
  HTTP 클라이언트로 요청/응답 처리, 타임아웃, 인터셉터, 공통 헤더 설정 등  
  네트워크 기본 기능을 담당합니다.

- **Retrofit**  
  `@GET`, `@POST` 어노테이션 기반으로 API 인터페이스를 선언하면  
  코드를 자동 생성해주는 네트워크 레이어 자동 생성기입니다.  
  `PostRemoteDataSource`에서 실제 API 호출 메서드를 정의합니다.

- **JsonSerializable**  
  서버에서 내려온 JSON 데이터를 Dart 객체로 변환하고,  
  Dart 객체를 다시 JSON으로 변환하는 직렬화/역직렬화를 자동 생성합니다.  
  `post_model.g.dart` 파일이 여기에 해당합니다.

- **Freezed**  
  불변(immutable) 데이터 클래스 생성, `copyWith`, `==` 비교, sealed class 지원 등  
  모델 및 상태(state)를 안전하게 관리하기 위한 코드 생성을 담당합니다.

  - `PostModel` → 네트워크 모델
  - `PostState`, `PostEvent` → presentation 계층의 상태/이벤트 정의

- **Dartz**  
  함수형 스타일의 유틸리티를 제공하는 패키지로,  
  특히 `Either<L, R>`를 사용하여  
  **성공 / 실패를 타입으로 명확하게 표현**합니다.

  - `Either<AppException, T>` 형태로 성공(T) 또는 실패(AppException)를 반환하도록 하여  
    `try/catch` 없는 타입 안전한 에러 처리를 연습합니다.

- **Riverpod (+ riverpod_annotation)**  
  상태 관리 및 DI(의존성 주입)를 담당합니다.
  - `@riverpod` 어노테이션을 사용해 `PostNotifier`와 각종 Provider를 선언하고,  
    코드 생성기로 실제 Provider를 자동 생성합니다.
  - View → Notifier → UseCase → Repository → DataSource 순으로 의존성을 주입합니다.

---

## 아키텍처 개요

```text
presentation  (UI / 상태)
   ↓
domain        (usecase / repository 인터페이스)
   ↓
data          (remote data source / repository 구현체)
```
