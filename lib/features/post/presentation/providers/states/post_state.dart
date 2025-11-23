import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:networking_example/features/post/data/models/post_model.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.loading() = _Loading;
  const factory PostState.loaded(List<PostModel> posts) = _Loaded;
  const factory PostState.detailLoaded(PostModel post) = _DetailLoaded;
  const factory PostState.error(String message) = _Error;
}
