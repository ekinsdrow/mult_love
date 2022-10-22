import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_series_event.freezed.dart';
part 'calendar_series_event.g.dart';

@freezed
class CalendarSeriesEvent with _$CalendarSeriesEvent {
  factory CalendarSeriesEvent({
    required String imgUrl,
    required String title,
    required String description,
    required String date,
  }) = _CalendarSeriesEvent;

  factory CalendarSeriesEvent.fromJson(Map<String, dynamic> json) =>
      _$CalendarSeriesEventFromJson(json);
}
