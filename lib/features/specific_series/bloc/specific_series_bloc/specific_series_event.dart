part of 'specific_series_bloc.dart';

@freezed
class SpecificSeriesEvent with _$SpecificSeriesEvent {
  const factory SpecificSeriesEvent.fetch({
    required Series series,
    required Serial serial,
    required Season season,
    required String seriesIndex,
    required String link,
    required bool isSubtitles,
    required SubType? subType,
  }) = _Fetch;
}
