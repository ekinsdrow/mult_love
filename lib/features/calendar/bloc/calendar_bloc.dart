import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/calendar/data/models/calendar_series_event.dart';
import 'package:mult_love/features/calendar/data/repository/calendar_repository.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc({
    required this.calendarRepository,
  }) : super(const _Loading()) {
    on<CalendarEvent>(_fetch);
  }

  final ICalendarRepository calendarRepository;

  Future<void> _fetch(
    CalendarEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(const _Loading());

    try {
      final events = await calendarRepository.getEvents(
        serialLink: event.serialUrl,
      );

      emit(_Success(events: events));
    } catch (e) {
      if (e is DioError) {
        if (e.response?.statusCode == 404) {
          emit(const _NotHaveCalendarError());
        } else {
          emit(const _Error());
        }
      } else {
        emit(const _Error());
      }
    }
  }
}
