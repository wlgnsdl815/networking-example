// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostNotifier)
const postProvider = PostNotifierProvider._();

final class PostNotifierProvider
    extends $NotifierProvider<PostNotifier, PostState> {
  const PostNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'postProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$postNotifierHash();

  @$internal
  @override
  PostNotifier create() => PostNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostState>(value),
    );
  }
}

String _$postNotifierHash() => r'04d6a628c7e211fbe9b8eaf77344bbf3c0ea8223';

abstract class _$PostNotifier extends $Notifier<PostState> {
  PostState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PostState, PostState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PostState, PostState>,
              PostState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
