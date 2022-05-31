part of 'series_bloc.dart';

@freezed
class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.fetch({
    required Serial serial,
    required Season season,
  }) = _Fetch;
}
