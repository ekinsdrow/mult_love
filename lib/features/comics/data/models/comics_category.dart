import 'package:freezed_annotation/freezed_annotation.dart';

part 'comics_category.freezed.dart';
part 'comics_category.g.dart';

@freezed
class ComicsCategory with _$ComicsCategory {
  factory ComicsCategory({
    required String title,
    required String imageUrl,
  }) = _ComicsCategory;

  factory ComicsCategory.fromJson(Map<String, dynamic> json) =>
      _$ComicsCategoryFromJson(json);
}
