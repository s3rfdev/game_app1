import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/widgets/ball.dart';

import '../models/stage.dart';

class GamePlace extends StatefulWidget {
  const GamePlace({super.key});

  @override
  State<GamePlace> createState() => _GamePlaceState();
}

class _GamePlaceState extends State<GamePlace> {
  @override
  void initState() {
    ballId = context.read<Stage>().ballId;
    if (context.read<Stage>().level == Level.easy) {
      ballsCount = 3;
      speed = 20;
      perc = 20;
    }
    if (context.read<Stage>().level == Level.medium) {
      ballsCount = 6;
      speed = 15;
      perc = 40;
    }
    if (context.read<Stage>().level == Level.hard) {
      ballsCount = 10;
      speed = 10;
      perc = 20;
    }

    for (int i = 0; i < ballsCount; i++) {
      list.add(Ball(id: ballId, perc: perc, speed: speed));
    }

    super.initState();
  }

  List<Widget> list = [];
  int ballId = 1;
  int perc = 20;
  int speed = 20;
  int ballsCount = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: list,
    );
  }
}
