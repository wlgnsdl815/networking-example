import 'package:dartz/dartz.dart';
import 'package:networking_example/core/app_exception.dart';

abstract class BaseUseCase<T, Params> {
  Future<Either<AppException, T>> call(Params params);
}

abstract class BaseUseCaseNoParams<T> {
  Future<Either<AppException, T>> call();
}
