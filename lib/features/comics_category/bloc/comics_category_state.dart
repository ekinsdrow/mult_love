part of 'comics_category_bloc.dart';

@freezed
class ComicsCategoryState with _$ComicsCategoryState {
  const factory ComicsCategoryState.loading() = _Loading;
  const factory ComicsCategoryState.error() = _Error;
  const factory ComicsCategoryState.success({
    required List<Comics> comicses,
  }) = _Success;
}
