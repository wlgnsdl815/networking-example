import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:networking_example/features/post/presentation/pages/post_page.dart';

void main() {
  runApp(ProviderScope(child: const NetworkingExampleApp()));
}

class NetworkingExampleApp extends StatelessWidget {
  const NetworkingExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostPage(),
    );
  }
}
