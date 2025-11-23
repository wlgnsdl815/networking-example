// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PostDetailNotifier)
const postDetailProvider = PostDetailNotifierFamily._();

final class PostDetailNotifierProvider
    extends $NotifierProvider<PostDetailNotifier, PostDetailState> {
  const PostDetailNotifierProvider._({
    required PostDetailNotifierFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'postDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$postDetailNotifierHash();

  @override
  String toString() {
    return r'postDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PostDetailNotifier create() => PostDetailNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PostDetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PostDetailState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PostDetailNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$postDetailNotifierHash() =>
    r'e7ca12ea4dfa5b6c7100178ca70db5c01b05021e';

final class PostDetailNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PostDetailNotifier,
          PostDetailState,
          PostDetailState,
          PostDetailState,
          int
        > {
  const PostDetailNotifierFamily._()
    : super(
        retry: null,
        name: r'postDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PostDetailNotifierProvider call(int id) =>
      PostDetailNotifierProvider._(argument: id, from: this);

  @override
  String toString() => r'postDetailProvider';
}

abstract class _$PostDetailNotifier extends $Notifier<PostDetailState> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  PostDetailState build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<PostDetailState, PostDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PostDetailState, PostDetailState>,
              PostDetailState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
