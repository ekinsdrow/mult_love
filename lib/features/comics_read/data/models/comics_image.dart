import 'package:freezed_annotation/freezed_annotation.dart';

part 'comics_image.freezed.dart';
part 'comics_image.g.dart';

@freezed
class ComicsImage with _$ComicsImage {
  factory ComicsImage({
    required String imageUrl,
  }) = _ComicsImage;

  factory ComicsImage.fromJson(Map<String, dynamic> json) =>
      _$ComicsImageFromJson(json);
}
