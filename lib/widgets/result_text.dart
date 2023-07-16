import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  ResultText({super.key, required this.tite});
  String tite;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          tite,
          style: const TextStyle(
            fontSize: 54,
            color: Colors.black,
            fontWeight: FontWeight.w900,
            letterSpacing: 0,
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
          tite,
          style: const TextStyle(
            letterSpacing: 0,
            fontSize: 49,
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
