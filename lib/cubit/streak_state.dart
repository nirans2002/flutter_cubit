part of 'streak_cubit.dart';

abstract class StreakState extends Equatable {
  const StreakState();

  @override
  List<Object> get props => [];
}

class StreakInitial extends StreakState {

  //  streakCount is the number of consecutive days in which the user ha
  int streakCount = 0;
  StreakInitial({
    required streakCount
  });
}
