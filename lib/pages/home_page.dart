import 'dart:io';

import 'package:flutter/material.dart';
import 'package:game_balls/pages/level_page.dart';
import 'package:game_balls/pages/privacy_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Image.asset('assets/images/name.png'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    Get.to(LevelPage());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    child: Image.asset(
                      'assets/images/btn_play.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(PrivacyPage());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    child: Image.asset(
                      'assets/images/btn_privacy.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    exit(0);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    child: Image.asset(
                      'assets/images/btn_exit.png',
                      fit: BoxFit.contain,
                    ),
                  ),
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
