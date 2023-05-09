part of 'calendar_cubit.dart';

abstract class CalendarState extends Equatable {
  const CalendarState();

  @override
  List<Object> get props => [];
}

class CalendarInitial extends CalendarState {
  Map<DateTime, List<Event>> cal_data = {};
  CalendarInitial({required this.cal_data});
}
