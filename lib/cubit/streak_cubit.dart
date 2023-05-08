import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'streak_state.dart';

class StreakCubit extends Cubit<StreakInitial> {
  StreakCubit()
      : super(
          StreakInitial(streakCount: 0),
        );

//  method to increment the streakCount
  void incrementStreakCount() => emit(
        StreakInitial(streakCount: state.streakCount + 1),
      );

// reset the streakCount
  void resetStreakCount() => emit(
        StreakInitial(streakCount: 0),
      );

// void randomize thestreakCount
  void randomStreakCount() => emit(
        StreakInitial(
          streakCount: state.streakCount = Random().nextInt(10),
        ),
      );
}
