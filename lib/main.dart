import 'package:flutter/material.dart';
import 'package:networking_example/screens/main_screen.dart';

void main() {
  runApp(const NetworkingExampleApp());
}

class NetworkingExampleApp extends StatelessWidget {
  const NetworkingExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
