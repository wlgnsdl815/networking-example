import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/post_model.dart';

part 'post_data_source.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class PostRemoteDataSource {
  /// Retrofit이 구현체(_PostRemoteDataSource)를 만들어 줌
  factory PostRemoteDataSource(Dio dio, {String baseUrl}) =
      _PostRemoteDataSource;

  /// 1) /posts 전체 조회
  @GET('/posts')
  Future<List<PostModel>> getPosts();

  /// 2) /posts/{id} 단일 조회
  @GET('/posts/{id}')
  Future<PostModel> getPostDetail(
    @Path('id') int id,
  );

  /// 3) /posts?userId={userId} 쿼리 파라미터 조회 예시
  @GET('/posts')
  Future<List<PostModel>> getPostsByUserId(
    @Query('userId') int userId,
  );
}
