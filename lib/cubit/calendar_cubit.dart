import 'package:bloc/bloc.dart';
import 'package:cubits_task/misc/calendar_sample_data.dart';
import 'package:equatable/equatable.dart';

import '../misc/utils.dart';

part 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarInitial(cal_data: getEventdata()));
}
