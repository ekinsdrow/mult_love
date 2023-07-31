part of 'comics_category_bloc.dart';

@freezed
class ComicsCategoryEvent with _$ComicsCategoryEvent {
  const factory ComicsCategoryEvent.fetch({
    required String url,
    required String serialUrl,
  }) = _Fetch;
}
