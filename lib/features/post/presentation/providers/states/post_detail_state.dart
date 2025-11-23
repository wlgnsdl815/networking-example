import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';

part 'post_detail_state.freezed.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState.loading() = _Loading;
  const factory PostDetailState.loaded(PostModel post) = _Loaded;
  const factory PostDetailState.error(String message) = _Error;
  // •	isRefreshing
  // •	hasMore (무한 스크롤)
  // •	selectedPostId
  // •	filter, sortType
  // •	리스트 + 선택된 탭 + 팝업 표시 여부 … 등 가능
}
