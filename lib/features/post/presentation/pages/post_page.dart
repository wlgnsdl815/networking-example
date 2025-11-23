import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:networking_example/features/post/presentation/providers/post_notifier.dart';
import 'package:networking_example/features/post/presentation/providers/states/post_state.dart';

class PostPage extends ConsumerWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),

      body: state.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (posts) => ListView.separated(
          itemBuilder: (_, i) => ListTile(
            title: Text(posts[i].title),
            subtitle: Text(posts[i].body),
          ),
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemCount: posts.length,
        ),
        detailLoaded: (post) => Center(
          child: Text(post.title),
        ),
        error: (msg) => Center(child: Text(msg)),
      ),
    );
  }
}
