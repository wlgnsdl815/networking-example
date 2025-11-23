import 'package:networking_example/features/post/domain/use_cases/get_post_detail.dart';
import 'package:networking_example/features/post/domain/use_cases/get_posts.dart';
import 'package:networking_example/features/post/domain/use_cases/get_posts_by_user_id.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:networking_example/features/post/domain/repositories/post_repository.dart';
import 'package:networking_example/features/post/data/repositories/post_repository_impl.dart';
import 'package:networking_example/features/post/data/datasources/post_data_source.dart';

import 'package:networking_example/core/network/dio_client.dart';

part 'post_providers.g.dart';

/// 1) RemoteDataSource Provider
@riverpod
PostRemoteDataSource postRemoteDataSource(Ref ref) {
  final dio = DioClient().dio;
  return PostRemoteDataSource(dio);
}

/// 2) Repository Provider
@riverpod
PostRepository postRepository(Ref ref) {
  final remote = ref.watch(postRemoteDataSourceProvider);
  return PostRepositoryImpl(remote);
}

/// 3) UseCase Providers
@riverpod
GetPosts getPosts(Ref ref) {
  final repo = ref.watch(postRepositoryProvider);
  return GetPosts(repo);
}

@riverpod
GetPostDetail getPostDetail(Ref ref) {
  final repo = ref.watch(postRepositoryProvider);
  return GetPostDetail(repo);
}

@riverpod
GetPostsByUserId getPostsByUserId(Ref ref) {
  final repo = ref.watch(postRepositoryProvider);
  return GetPostsByUserId(repo);
}
