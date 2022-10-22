part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.loading() = _Loading;
  const factory CalendarState.unknownError() = _Error;
  const factory CalendarState.dontHaveCalendarError() = _NotHaveCalendarError;
  const factory CalendarState.success({
    required List<CalendarSeriesEvent> events,
  }) = _Success;
}
