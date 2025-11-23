import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';

part 'posts_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.loading() = _Loading;
  const factory PostsState.loaded(List<PostModel> posts) = _Loaded;
  const factory PostsState.error(String message) = _Error;
  // •	isRefreshing
  // •	hasMore (무한 스크롤)
  // •	selectedPostId
  // •	filter, sortType
  // •	리스트 + 선택된 탭 + 팝업 표시 여부 … 등 가능
}
