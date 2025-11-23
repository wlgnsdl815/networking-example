import 'package:dartz/dartz.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';

abstract class PostRepository {
  Future<Either<AppException, List<PostModel>>> getPosts();
  Future<Either<AppException, PostModel>> getPostDetail(int id);
  Future<Either<AppException, List<PostModel>>> getPostsByUserId(int userId);
}
