// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 1) RemoteDataSource Provider

@ProviderFor(postRemoteDataSource)
const postRemoteDataSourceProvider = PostRemoteDataSourceProvider._();

/// 1) RemoteDataSource Provider

final class PostRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PostRemoteDataSource,
          PostRemoteDataSource,
          PostRemoteDataSource
        >
    with $Provider<PostRemoteDataSource> {
  /// 1) RemoteDataSource Provider
  const PostRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PostRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PostRemoteDataSource create(Ref ref) {
    return postRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostRemoteDataSource>(value),
    );
  }
}

String _$postRemoteDataSourceHash() =>
    r'27e2297cbfa7ded2139d71302d66b9128ded1413';

/// 2) Repository Provider

@ProviderFor(postRepository)
const postRepositoryProvider = PostRepositoryProvider._();

/// 2) Repository Provider

final class PostRepositoryProvider
    extends $FunctionalProvider<PostRepository, PostRepository, PostRepository>
    with $Provider<PostRepository> {
  /// 2) Repository Provider
  const PostRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postRepositoryHash();

  @$internal
  @override
  $ProviderElement<PostRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PostRepository create(Ref ref) {
    return postRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostRepository>(value),
    );
  }
}

String _$postRepositoryHash() => r'3080bf96d1d24c171000ef173b35835694eab570';

/// 3) UseCase Providers

@ProviderFor(getPosts)
const getPostsProvider = GetPostsProvider._();

/// 3) UseCase Providers

final class GetPostsProvider
    extends $FunctionalProvider<GetPosts, GetPosts, GetPosts>
    with $Provider<GetPosts> {
  /// 3) UseCase Providers
  const GetPostsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPostsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPostsHash();

  @$internal
  @override
  $ProviderElement<GetPosts> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPosts create(Ref ref) {
    return getPosts(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPosts value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPosts>(value),
    );
  }
}

String _$getPostsHash() => r'2bac77b840858195862ae370eb4429c2d3df5001';

@ProviderFor(getPostDetail)
const getPostDetailProvider = GetPostDetailProvider._();

final class GetPostDetailProvider
    extends $FunctionalProvider<GetPostDetail, GetPostDetail, GetPostDetail>
    with $Provider<GetPostDetail> {
  const GetPostDetailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPostDetailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPostDetailHash();

  @$internal
  @override
  $ProviderElement<GetPostDetail> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPostDetail create(Ref ref) {
    return getPostDetail(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPostDetail value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPostDetail>(value),
    );
  }
}

String _$getPostDetailHash() => r'f011d90050dcdbd955082342ec0c3aec42e28b9f';

@ProviderFor(getPostsByUserId)
const getPostsByUserIdProvider = GetPostsByUserIdProvider._();

final class GetPostsByUserIdProvider
    extends
        $FunctionalProvider<
          GetPostsByUserId,
          GetPostsByUserId,
          GetPostsByUserId
        >
    with $Provider<GetPostsByUserId> {
  const GetPostsByUserIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPostsByUserIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPostsByUserIdHash();

  @$internal
  @override
  $ProviderElement<GetPostsByUserId> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPostsByUserId create(Ref ref) {
    return getPostsByUserId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPostsByUserId value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPostsByUserId>(value),
    );
  }
}

String _$getPostsByUserIdHash() => r'1bea6874cfe533c6244b9e243146dd5478cfcdee';
