// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostsNotifier)
const postsProvider = PostsNotifierProvider._();

final class PostsNotifierProvider
    extends $NotifierProvider<PostsNotifier, PostsState> {
  const PostsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postsNotifierHash();

  @$internal
  @override
  PostsNotifier create() => PostsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostsState>(value),
    );
  }
}

String _$postsNotifierHash() => r'03ebbf35e84301870f9b10349ede4db14f2bf1fb';

abstract class _$PostsNotifier extends $Notifier<PostsState> {
  PostsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PostsState, PostsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PostsState, PostsState>,
              PostsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
