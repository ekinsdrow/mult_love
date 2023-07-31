part of 'comics_read_bloc.dart';

@freezed
class ComicsReadEvent with _$ComicsReadEvent {
  const factory ComicsReadEvent.fetch({
    required String url,
    required String serialUrl,
    required bool isNeedAddPage,
  }) = _Fetch;

  const factory ComicsReadEvent.nextPage({
    required int number,
    required String url,
    required String serialUrl,
    required bool isNeedAnd,
  }) = _NextPage;
}
