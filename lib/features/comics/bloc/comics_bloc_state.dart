part of 'comics_bloc.dart';

@freezed
class ComicsBlocState with _$ComicsBlocState {
  const factory ComicsBlocState.loading() = _Loading;
  const factory ComicsBlocState.error() = _Error;
  const factory ComicsBlocState.success({
    required List<ComicsCategory> comicsCategories,
  }) = _Success;
}
