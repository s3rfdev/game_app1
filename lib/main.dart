import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/models/stage.dart';
import 'package:game_balls/pages/balls_page.dart';
import 'package:game_balls/pages/game_page.dart';
import 'package:game_balls/pages/home_page.dart';
import 'package:game_balls/pages/level_page.dart';
import 'package:game_balls/pages/loading_page.dart';
import 'package:game_balls/pages/privacy_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<Stage>(
          create: (BuildContext context) => Stage(),
        ),
      ],
      child: GetMaterialApp(
        home: MaterialApp(
          title: 'Game App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: LoadingPage(),
        ),
      ),
    );
  }
}
