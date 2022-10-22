part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState.loading() = _Loading;
  const factory CalendarState.error({
    required String error,
  }) = _Error;
  const factory CalendarState.success() = _Success;
}
