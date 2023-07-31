import 'package:freezed_annotation/freezed_annotation.dart';

part 'comics.freezed.dart';
part 'comics.g.dart';

@freezed
class Comics with _$Comics {
  factory Comics({
    required String imageUrl,
    required String url,
  }) = _Comics;

  factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);
}
