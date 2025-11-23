import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:networking_example/core/app_exception.dart';

import '../../domain/repositories/post_repository.dart';
import '../datasources/post_data_source.dart';
import '../models/post_model.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteDataSource;

  PostRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppException, List<PostModel>>> getPosts() async {
    try {
      final result = await remoteDataSource.getPosts();
      return Right(result); // 성공
    } on DioException catch (e) {
      return Left(AppException.fromDioError(e)); // 네트워크 관련 실패
    } catch (e) {
      return Left(AppException(message: '알 수 없는 오류가 발생했습니다.'));
    }
  }

  @override
  Future<Either<AppException, PostModel>> getPostDetail(int id) async {
    try {
      final result = await remoteDataSource.getPostDetail(id);
      return Right(result);
    } on DioException catch (e) {
      return Left(AppException.fromDioError(e));
    } catch (e) {
      return Left(AppException(message: '알 수 없는 오류가 발생했습니다.'));
    }
  }

  @override
  Future<Either<AppException, List<PostModel>>> getPostsByUserId(
    int userId,
  ) async {
    try {
      final result = await remoteDataSource.getPostsByUserId(userId);
      return Right(result);
    } on DioException catch (e) {
      return Left(AppException.fromDioError(e));
    } catch (e) {
      return Left(AppException(message: '알 수 없는 오류가 발생했습니다.'));
    }
  }
}
