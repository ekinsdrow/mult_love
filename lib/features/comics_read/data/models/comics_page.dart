import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/comics_read/data/models/comics_image.dart';

part 'comics_page.freezed.dart';
part 'comics_page.g.dart';

@freezed
class ComicsModelPage with _$ComicsModelPage {
  factory ComicsModelPage({
    required ComicsImage currentImage,
    required int pageCount,
    required int currentPageIndex,
  }) = _ComicsModelPage;

  factory ComicsModelPage.fromJson(Map<String, dynamic> json) =>
      _$ComicsModelPageFromJson(json);
}
