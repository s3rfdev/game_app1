import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

import '../models/stage.dart';
import '../pages/result_page.dart';

class Ball extends StatefulWidget {
  Ball({
    super.key,
    required this.id,
    required this.perc,
    required this.speed,
  });
  int id;
  int perc;
  int speed;
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  double x = 0;
  double y = 0;
  bool initFlag = true;
  int idR = 0;
  @override
  void initState() {
    idR = getRandomId(perc: widget.perc, id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      x = getRandomX(context);
      Timer.periodic(Duration(milliseconds: widget.speed + Random().nextInt(4)),
          (timer) {
        if (y < MediaQuery.of(context).size.height) {
          setState(() {
            y += 5;
          });
        } else {
          setState(() {
            if (idR == context.read<Stage>().ballId && y != 100000) {
              Get.off(() => ResultPage());
            }
            y = 0;
            idR = getRandomId(perc: widget.perc, id: widget.id);
            x = getRandomX(context);
          });
        }
      });
    }
    return Positioned(
      left: x,
      top: y,
      child: Listener(
        onPointerDown: (event) {
          setState(() {
            y = 100000;
          });
          if (idR == context.read<Stage>().ballId) context.read<Stage>().inc();
        },
        child: Container(
          width: 70,
          height: 70,
          child: Center(
            child: Image.asset('assets/images/ball$idR.png'),
          ),
        ),
      ),
    );
  }
}

int getRandomId({required int perc, required id}) {
  int prob = Random().nextInt(100);
  if (prob >= perc) {
    id = 1 + Random().nextInt(4);
  }
  return id;
}

double getRandomX(context) {
  var rndX = Random().nextInt(MediaQuery.of(context).size.width.toInt()) - 70;
  if (rndX < 0) rndX = 0;
  return rndX.toDouble();
}
