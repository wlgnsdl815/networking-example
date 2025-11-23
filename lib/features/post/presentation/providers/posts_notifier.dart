import 'package:dartz/dartz.dart';
import 'package:networking_example/features/post/presentation/providers/post_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';
import 'package:networking_example/features/post/domain/use_cases/get_posts.dart';
import 'package:networking_example/features/post/domain/use_cases/get_posts_by_user_id.dart';
import 'package:networking_example/features/post/presentation/providers/states/posts_state.dart';

part 'posts_notifier.g.dart';

@riverpod
class PostsNotifier extends _$PostsNotifier {
  // build에서 초기 상태 리턴
  @override
  PostsState build() {
    _onFetchPosts();
    return const PostsState.loading();
  }

  GetPosts get _getPosts => ref.read(getPostsProvider);
  GetPostsByUserId get _getPostsByUserId => ref.read(getPostsByUserIdProvider);

  Future<void> _onFetchPosts() async {
    state = const PostsState.loading();

    final Either<AppException, List<PostModel>> result = await _getPosts();

    state = result.fold(
      (error) => PostsState.error(error.message),
      (posts) => PostsState.loaded(posts),
    );
  }

  Future<void> _onFetchPostsByUserId(int userId) async {
    state = const PostsState.loading();

    final result = await _getPostsByUserId(userId);

    state = result.fold(
      (error) => PostsState.error(error.message),
      (posts) => PostsState.loaded(posts),
    );
  }
}
