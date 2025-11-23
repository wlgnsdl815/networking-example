import 'package:dartz/dartz.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';
import 'package:networking_example/features/post/domain/repositories/post_repository.dart';
import 'package:networking_example/share/domain/base_use_case.dart';

class GetPostDetail extends BaseUseCase<PostModel, int> {
  final PostRepository repository;

  GetPostDetail(this.repository);

  @override
  Future<Either<AppException, PostModel>> call(int id) {
    return repository.getPostDetail(id);
  }
}
