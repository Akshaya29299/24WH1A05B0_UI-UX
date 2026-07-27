import 'package:flutter/material.dart';

// 1. The main execution entry point required by Flutter
void main() {
  runApp(const MyInteractiveStarApp());
}

// 2. The Application Root Wrapper
class MyInteractiveStarApp extends StatelessWidget {
  const MyInteractiveStarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateful Star Rating(24WH1A05B0_AkshayaReddy)')),
        body: const Center(
          // 3. Calling your custom stateful widget here
          child: StatefulInteractiveRating(),
        ),
      ),
    );
  }
}

/// An interactive rating tracker configuration.
class StatefulInteractiveRating extends StatefulWidget {
  const StatefulInteractiveRating({super.key});

  @override
  State<StatefulInteractiveRating> createState() => _StatefulInteractiveRatingState();
}

/// The backing mutable state class managing the pointer math.
class _StatefulInteractiveRatingState extends State<StatefulInteractiveRating> {
  double _currentRating = 0.0; // Dynamic tracking variable (0.0 to 5.0)
  
  final int _totalStars = 5;
  final double _starSize = 40.0;

  // Calculates the rating fraction depending on the pointer coordinate location
  void _calculateRating(Offset localPosition) {
    double calculatedRating = localPosition.dx / _starSize;
    
    // Confines the data value limits safely within 0 and 5
    if (calculatedRating < 0) calculatedRating = 0;
    if (calculatedRating > _totalStars) calculatedRating = _totalStars.toDouble();

    // Forces the UI system tree to redraw immediately with the new data
    setState(() {
      _currentRating = calculatedRating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Track swipe dragging on touchscreen devices
      onHorizontalDragUpdate: (details) => _calculateRating(details.localPosition),
      child: MouseRegion(
        // Track cursor hover movement on web or desktop engines
        onHover: (details) => _calculateRating(details.localPosition),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(_totalStars, (index) {
            IconData starIcon;
            
            // Decides star fill appearance dynamically
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
              size: _starSize, // FIXED: Changed semicolon (;) to a comma (,)
            );
          }),
        ),
      ),
    );
  }
}
