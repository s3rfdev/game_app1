import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_balls/config.dart';
import 'package:game_balls/models/stage.dart';
import 'package:game_balls/pages/balls_page.dart';
import 'package:game_balls/pages/game_page.dart';
import 'package:game_balls/pages/home_page.dart';
import 'package:game_balls/pages/level_page.dart';
import 'package:game_balls/pages/loading_page.dart';
import 'package:game_balls/pages/privacy_page.dart';
import 'package:get/get.dart';
import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Appodeal.setAutoCache(AppodealAdType.Interstitial, true);
    Appodeal.setAutoCache(AppodealAdType.MREC, true);
    Appodeal.setTesting(Config.testMode);
    Appodeal.setLogLevel(Appodeal.LogLevelVerbose);
    Appodeal.setChildDirectedTreatment(false);
    Appodeal.disableNetwork("admob");

    Appodeal.initialize(
        appKey: Config.appodealKey,
        adTypes: [
          AppodealAdType.Interstitial,
          AppodealAdType.Banner,
          AppodealAdType.MREC
        ],
        onInitializationFinished: (errors) => {});

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
