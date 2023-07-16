import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/pages/game_page.dart';
import 'package:get/get.dart';

import '../models/stage.dart';

class BallsPage extends StatelessWidget {
  const BallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/bg_grey.png',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(50),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Image.asset('assets/images/name_mini.png'),
                SizedBox(height: 10),
                Image.asset('assets/images/choose_ball.png'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: IconButton(
                        icon: Image.asset('assets/images/ball1.png'),
                        iconSize: 50,
                        onPressed: () {
                          context.read<Stage>().ballId = 1;
                          context.read<Stage>().emit(0);
                          Get.to(GamePage());
                        },
                      ),
                    ),
                    Center(
                      child: IconButton(
                        icon: Image.asset('assets/images/ball2.png'),
                        iconSize: 50,
                        onPressed: () {
                          context.read<Stage>().ballId = 2;
                          context.read<Stage>().emit(0);
                          Get.to(GamePage());
                        },
                      ),
                    ),
                    Center(
                      child: IconButton(
                        icon: Image.asset('assets/images/ball3.png'),
                        iconSize: 50,
                        onPressed: () {
                          context.read<Stage>().ballId = 3;
                          context.read<Stage>().emit(0);
                          Get.to(GamePage());
                        },
                      ),
                    ),
                    Center(
                      child: IconButton(
                        icon: Image.asset('assets/images/ball4.png'),
                        iconSize: 50,
                        onPressed: () {
                          context.read<Stage>().ballId = 4;
                          context.read<Stage>().emit(0);
                          Get.to(GamePage());
                        },
                      ),
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                      child: Image.asset('assets/images/btn_back.png')),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
