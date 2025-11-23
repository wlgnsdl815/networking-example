import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';

part 'post_detail_state.freezed.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState.loading() = _Loading;
  const factory PostDetailState.loaded(PostModel post) = _Loaded;
  const factory PostDetailState.error(String message) = _Error;
}
