import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:networking_example/features/post/presentation/providers/post_detail_notifier.dart';
import 'package:networking_example/features/post/presentation/providers/states/post_detail_state.dart';

class PostDetailPage extends ConsumerWidget {
  final int postId;

  const PostDetailPage({
    super.key,
    required this.postId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // family provider 사용
    final state = ref.watch(postDetailProvider(postId));

    return Scaffold(
      appBar: AppBar(title: Text('Post #$postId')),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (post) => Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(post.body),
              ],
            ),
          ),
        ),
        error: (msg) => Center(child: Text(msg)),
      ),
    );
  }
}
