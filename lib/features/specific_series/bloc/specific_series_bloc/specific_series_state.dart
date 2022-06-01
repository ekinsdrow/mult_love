part of 'specific_series_bloc.dart';

@freezed
class SpecificSeriesState with _$SpecificSeriesState {
  const factory SpecificSeriesState.loading() = _Loading;
  const factory SpecificSeriesState.error() = _Error;
  const factory SpecificSeriesState.success(
    SpecificSeries specificSeries,
  ) = _Success;
}
