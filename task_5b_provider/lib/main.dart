import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => RatingProvider(),
      child: const MyApp(),
    ),
  );
}

class RatingProvider extends ChangeNotifier {
  int rating = 0;

  void setRating(int value) {
    rating = value;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RatingPage(),
    );
  }
}

class RatingPage extends StatelessWidget {
  const RatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RatingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sameeksha - 24WH1A05C5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Provider State Management",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    provider.setRating(index + 1);
                  },
                  icon: Icon(
                    provider.rating >= index + 1
                        ? Icons.star
                        : Icons.star_border,
                    color: Colors.yellow,
                    size: 50,
                  ),
                );
              }),
            ),

            const SizedBox(height: 20),

            Text(
              "Rating: ${provider.rating} / 5",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}