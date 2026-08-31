import 'package:flutter/material.dart';
void main() {
  runApp(const MyStarApp());
}
class MyStarApp extends StatelessWidget {
  const MyStarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Star Rating(24WH1A05B0_AkshayaReddy)')),
        body: const Center(
          child: StatelessStarRating(),
        ),
      ),
    );
  }
}
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
