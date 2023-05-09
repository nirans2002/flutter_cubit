// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'streak_cubit.dart';

abstract class StreakState {
  const StreakState();

  @override
  List<Object> get props => [];
}

class StreakInitial extends StreakState {
  //  streakCount is the number of consecutive days in which the user ha
  int streakCount = 0;
  StreakInitial({required this.streakCount});
}

class StreakLoading extends StreakState {}

class StreakLoaded extends StreakState {
  final int streakCount;
  const StreakLoaded(this.streakCount);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is StreakLoaded && o.streakCount == streakCount;
  }

  @override
  int get hashCode => streakCount.hashCode;
}
