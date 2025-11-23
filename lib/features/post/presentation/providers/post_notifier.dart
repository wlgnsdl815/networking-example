import 'package:dartz/dartz.dart';
import 'package:networking_example/features/post/presentation/providers/post_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:networking_example/core/app_exception.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';
import 'package:networking_example/features/post/domain/use_cases/get_posts.dart';
import 'package:networking_example/features/post/domain/use_cases/get_post_detail.dart';
import 'package:networking_example/features/post/domain/use_cases/get_posts_by_user_id.dart';
import 'package:networking_example/features/post/presentation/providers/events/post_event.dart';
import 'package:networking_example/features/post/presentation/providers/states/post_state.dart';

part 'post_notifier.g.dart';

@riverpod
class PostNotifier extends _$PostNotifier {
  // build에서 초기 상태 리턴
  @override
  PostState build() {
    _onFetchPosts();
    return const PostState.initial();
  }

  GetPosts get _getPosts => ref.read(getPostsProvider);
  GetPostDetail get _getPostDetail => ref.read(getPostDetailProvider);
  GetPostsByUserId get _getPostsByUserId => ref.read(getPostsByUserIdProvider);

  Future<void> onEvent(PostEvent event) {
    return event.when(
      fetchPosts: _onFetchPosts,
      fetchPostDetail: _onFetchPostDetail,
      fetchPostsByUserId: _onFetchPostsByUserId,
    );
  }

  Future<void> _onFetchPosts() async {
    state = const PostState.loading();

    final Either<AppException, List<PostModel>> result = await _getPosts();

    state = result.fold(
      (error) => PostState.error(error.message),
      (posts) => PostState.loaded(posts),
    );
  }

  Future<void> _onFetchPostDetail(int id) async {
    state = const PostState.loading();

    final result = await _getPostDetail(id);

    state = result.fold(
      (error) => PostState.error(error.message),
      (post) => PostState.detailLoaded(post),
    );
  }

  Future<void> _onFetchPostsByUserId(int userId) async {
    state = const PostState.loading();

    final result = await _getPostsByUserId(userId);

    state = result.fold(
      (error) => PostState.error(error.message),
      (posts) => PostState.loaded(posts),
    );
  }
}
