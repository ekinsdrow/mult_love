import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(const _Loading()) {
    on<CalendarEvent>(_fetch);
  }

  Future<void> _fetch(
    CalendarEvent event,
    Emitter<CalendarState> emit,
  ) async {}
}
