import 'package:freezed_annotation/freezed_annotation.dart';

part 'serial.freezed.dart';
part 'serial.g.dart';

@freezed
class Serial with _$Serial {
  factory Serial({
    required String imageUrl,
    required String link,
  }) = _Serial;

  factory Serial.fromJson(Map<String, dynamic> json) => _$SerialFromJson(json);
}
