part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.fetch({
    required String serialUrl,
  }) = _Fecth;
}
