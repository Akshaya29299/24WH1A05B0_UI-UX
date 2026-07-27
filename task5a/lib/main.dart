import 'package:flutter/material.dart';

// 1. The main execution entry point required by Flutter
void main() {
  runApp(const MyStarApp());
}

// 2. The Application Root Wrapper
class MyStarApp extends StatelessWidget {
  const MyStarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Star Rating(24WH1A05B0_AkshayaReddy)')),
        body: const Center(
          // 3. Calling your custom stateless widget here
          child: StatelessStarRating(),
        ),
      ),
    );
  }
}

/// A completely static, immutable rating display.
/// All properties inside this layout are permanent once painted.
class StatelessStarRating extends StatelessWidget {
  const StatelessStarRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 40),
        Icon(Icons.star, color: Colors.yellow, size: 40),
        Icon(Icons.star, color: Colors.yellow, size: 40),
        Icon(Icons.star, color: Colors.yellow, size: 40),
        Icon(Icons.star, color: Colors.yellow, size: 40),
      ],
    );
  }
}
