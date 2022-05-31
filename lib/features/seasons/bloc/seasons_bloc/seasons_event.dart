part of 'seasons_bloc.dart';

@freezed
class SeasonsEvent with _$SeasonsEvent {
  const factory SeasonsEvent.fetch({
    required String serialLink,
  }) = _Fetch;
}
