import 'package:dio/dio.dart';

class AppException implements Exception {
  final String message;
  final String? code;

  AppException({
    required this.message,
    this.code,
  });

  factory AppException.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return AppException(message: "네트워크 연결이 불안정합니다.");
      case DioExceptionType.badResponse:
        return AppException(
          message: "서버 오류가 발생했습니다.",
          code: '${error.response?.statusCode}',
        );
      case DioExceptionType.connectionError:
        return AppException(message: "인터넷 연결을 확인해주세요.");
      default:
        return AppException(message: "알 수 없는 오류가 발생했습니다.");
    }
  }
}
