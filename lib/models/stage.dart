import 'package:flutter_bloc/flutter_bloc.dart';

class Stage extends Cubit<int> {
  int ballId = 1;
  Level level = Level.easy;
  Stage() : super(0);
  void inc() => emit(state + 1);
  int get() => state;
}

enum Level {
  easy,
  medium,
  hard,
}
