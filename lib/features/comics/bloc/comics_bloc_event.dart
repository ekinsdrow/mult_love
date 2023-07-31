part of 'comics_bloc.dart';

@freezed
class ComicsBlocEvent with _$ComicsBlocEvent {
  const factory ComicsBlocEvent.fetch({
    required String url,
    required String serialUrl,
  }) = _Fetch;
}
