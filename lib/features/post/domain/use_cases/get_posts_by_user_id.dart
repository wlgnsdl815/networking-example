import 'package:dartz/dartz.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';
import 'package:networking_example/features/post/domain/repositories/post_repository.dart';
import 'package:networking_example/share/domain/base_use_case.dart';

class GetPostsByUserId extends BaseUseCase<List<PostModel>, int> {
  final PostRepository repository;

  GetPostsByUserId(this.repository);

  @override
  Future<Either<AppException, List<PostModel>>> call(int userId) {
    return repository.getPostsByUserId(userId);
  }
}
