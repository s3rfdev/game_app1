import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/widgets/ball.dart';
import 'package:game_balls/widgets/balls_count.dart';
import 'package:game_balls/widgets/result_text.dart';

import '../models/stage.dart';
import '../widgets/game_place.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/bg_grey.png',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                ResultText(tite: 'Your Result'),
                SizedBox(height: 20),
                BallsCount(count: context.read<Stage>().get()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
