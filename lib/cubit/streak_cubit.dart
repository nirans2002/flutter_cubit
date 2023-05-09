import 'dart:math';

import 'package:bloc/bloc.dart';

part 'streak_state.dart';

int random = Random().nextInt(10);
class StreakCubit extends Cubit<StreakState> {
  
  StreakCubit()
      : super(
          StreakInitial(
            streakCount: random,
          ),
        );

//  method to increment the streakCount
//   void incrementStreakCount() => emit(
//         StreakInitial(streakCount: state.streakCount + 1),
//       );

// // reset the streakCount
//   void resetStreakCount() => emit(
//         StreakInitial(streakCount: 0),
//       );

// // void randomize thestreakCount
//   void randomStreakCount() => emit(
//         StreakInitial(
//           streakCount: state.streakCount = Random().nextInt(10),
//         ),
//       );

  void getStreakCount() {
    emit(StreakLoading());
    final strackCount = Random().nextInt(10);
    emit(const StreakLoaded(5));
  }
}
