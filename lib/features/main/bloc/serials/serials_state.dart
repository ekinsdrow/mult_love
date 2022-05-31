part of 'serials_bloc.dart';

@freezed
class SerialsState with _$SerialsState {
  const factory SerialsState.loading() = _Loading;
  const factory SerialsState.success({
    required List<Serial> serials,
  }) = _Success;
  const factory SerialsState.error() = _Error;
}
