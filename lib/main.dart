import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:networking_example/features/post/presentation/pages/posts_page.dart';

void main() {
  runApp(const ProviderScope(child: NetworkingExampleApp()));
}

class NetworkingExampleApp extends StatelessWidget {
  const NetworkingExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PostsPage());
  }
}
