import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/widgets/ball.dart';
import 'package:game_balls/widgets/balls_count.dart';

import '../models/stage.dart';
import '../widgets/game_place.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('${context.read<Stage>().ballId} - ${context.read<Stage>().level}');
    context.watch<Stage>().state;
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
          GamePlace(),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(50),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Image.asset('assets/images/name_mini.png'),
                BallsCount(count: context.read<Stage>().get()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
