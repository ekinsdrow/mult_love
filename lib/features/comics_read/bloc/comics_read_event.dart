part of 'comics_read_bloc.dart';

@freezed
class ComicsReadEvent with _$ComicsReadEvent {
  const factory ComicsReadEvent.fetch({
    required String url,
    required String serialUrl,
  }) = _Fetch;
  const factory ComicsReadEvent.nextPage({
    required int number,
    required String url,
    required String serialUrl,
  }) = _NextPage;
}
