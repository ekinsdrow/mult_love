part of 'series_bloc.dart';

@freezed
class SeriesState with _$SeriesState {
  const factory SeriesState.loading() = _Loading;
  const factory SeriesState.error() = _Error;
  const factory SeriesState.success({
    required List<Series> series,
  }) = _Success;
}
