import 'package:dartz/dartz.dart';
import 'package:networking_example/features/post/domain/use_cases/get_post_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';
import 'package:networking_example/features/post/presentation/providers/states/post_detail_state.dart';
import 'package:networking_example/features/post/presentation/providers/post_providers.dart';

part 'post_detail_notifier.g.dart';

@riverpod
class PostDetailNotifier extends _$PostDetailNotifier {
  @override
  PostDetailState build(int id) {
    // family 인자로 id를 받음
    _fetch(id);
    return const PostDetailState.loading();
  }

  GetPostDetail get _getPostDetail => ref.read(getPostDetailProvider);

  Future<void> _fetch(int id) async {
    state = const PostDetailState.loading();

    final Either<AppException, PostModel> result = await _getPostDetail(id);

    state = result.fold(
      (error) => PostDetailState.error(error.message),
      (post) => PostDetailState.loaded(post),
    );
  }
}
