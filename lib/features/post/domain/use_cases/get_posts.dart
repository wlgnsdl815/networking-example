import 'package:dartz/dartz.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';
import 'package:networking_example/features/post/domain/repositories/post_repository.dart';
import 'package:networking_example/share/domain/base_use_case.dart';

class GetPosts extends BaseUseCaseNoParams<List<PostModel>> {
  final PostRepository repository;

  GetPosts(this.repository);

  @override
  Future<Either<AppException, List<PostModel>>> call() {
    return repository.getPosts();
  }
}
