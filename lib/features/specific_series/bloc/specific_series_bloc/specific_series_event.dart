part of 'specific_series_bloc.dart';

@freezed
class SpecificSeriesEvent with _$SpecificSeriesEvent {
  const factory SpecificSeriesEvent.fetch({
    required Series series,
    required Serial serial,
    required String link,
  }) = _Fetch;
}
