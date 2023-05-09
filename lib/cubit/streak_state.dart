part of 'streak_cubit.dart';

abstract class StreakState {
  const StreakState();

  @override
  List<Object> get props => [];
}

class StreakInitial extends StreakState {
  //  streakCount is the number of consecutive days in which the user ha
  int streakCount = Random().nextInt(10);
  StreakInitial({required this.streakCount});
}

class StreakLoading extends StreakState {}

class StreakLoaded extends StreakState {
  
}
