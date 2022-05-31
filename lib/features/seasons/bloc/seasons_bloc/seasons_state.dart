part of 'seasons_bloc.dart';

@freezed
class SeasonsState with _$SeasonsState {
  const factory SeasonsState.loading() = _Loading;
  const factory SeasonsState.error() = _Error;
  const factory SeasonsState.success({
    required List<Season> seasons,
  }) = _Success;
}
