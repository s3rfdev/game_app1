import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/pages/balls_page.dart';
import 'package:game_balls/pages/game_page.dart';
import 'package:get/get.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

import '../models/stage.dart';

class LevelPage extends StatefulWidget {
  const LevelPage({super.key});

  @override
  State<LevelPage> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  void initState() {
    // Appodeal.show(AppodealAdType.All);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/bg_black.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 60),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              Image.asset(
                'assets/images/name_privacy.png',
                fit: BoxFit.fill,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              const Text(
                'Each level has its own difficulty, choose the appropriate one. Do you want to test your skills? Then try: Medium or Hard',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.10),
              InkWell(
                onTap: () {
                  context.read<Stage>().level = Level.easy;
                  Get.to(BallsPage());
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  child: Image.asset(
                    'assets/images/btn_easy.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<Stage>().level = Level.medium;
                  Get.to(BallsPage());
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  child: Image.asset(
                    'assets/images/btn_medium.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<Stage>().level = Level.hard;
                  Get.to(BallsPage());
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  child: Image.asset(
                    'assets/images/btn_hard.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        )
      ],
    ));
  }
}
