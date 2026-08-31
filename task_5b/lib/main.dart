import 'package:flutter/material.dart';

void main() {
  runApp(const MyInteractiveStarApp());
}

class MyInteractiveStarApp extends StatelessWidget {
  const MyInteractiveStarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Star Rating(24WH1A05B0_AkshayaReddy)')),
        body: const Center(
          child: StatefulInteractiveRating(),
        ),
      ),
    );
  }
}

class StatefulInteractiveRating extends StatefulWidget {
  const StatefulInteractiveRating({super.key});

  @override
  State<StatefulInteractiveRating> createState() => _StatefulInteractiveRatingState();
}

class _StatefulInteractiveRatingState extends State<StatefulInteractiveRating> {
  double _currentRating = 0.0; 
  
  final int _totalStars = 5;
  final double _starSize = 40.0;

  void _calculateRating(Offset localPosition) {
    double calculatedRating = localPosition.dx / _starSize;
    
    if (calculatedRating < 0) calculatedRating = 0;
    if (calculatedRating > _totalStars) calculatedRating = _totalStars.toDouble();

    setState(() {
      _currentRating = calculatedRating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onHorizontalDragUpdate: (details) => _calculateRating(details.localPosition),
          child: MouseRegion(
            onHover: (details) => _calculateRating(details.localPosition),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(_totalStars, (index) {
                IconData starIcon;
                
                if (_currentRating >= index + 1) {
                  starIcon = Icons.star; // Full Star
                } else if (_currentRating > index && _currentRating < index + 1) {
                  starIcon = Icons.star_half; // Half Star
                } else {
                  starIcon = Icons.star_border; // Empty Star
                }

                return Icon(
                  starIcon,
                  color: Colors.yellow,
                  size: _starSize,
                );
              }),
            ),
          ),
        ),
        const SizedBox(height: 16), // Space between stars and rating text
        Text(
          'Rating: ${_currentRating.toStringAsFixed(1)} / $_totalStars',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
