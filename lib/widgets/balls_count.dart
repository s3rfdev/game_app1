import 'package:flutter/material.dart';

class BallsCount extends StatelessWidget {
  BallsCount({super.key, required this.count});
  int count;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          count.toString(),
          style: const TextStyle(
            fontSize: 64,
            color: Colors.black,
            fontWeight: FontWeight.w900,
            letterSpacing: -12,
            shadows: [
              Shadow(
                blurRadius: 16.0,
                color: Colors.black,
                offset: Offset(0.0, 0.0),
              ),
            ],
          ),
        ),
        Text(
          count.toString(),
          style: const TextStyle(
            letterSpacing: -12,
            fontSize: 59,
            color: Colors.white,
            fontWeight: FontWeight.w900,
            shadows: [
              Shadow(
                blurRadius: 15.0,
                color: Colors.black,
                offset: Offset(0.0, 0.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
