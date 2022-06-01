import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice.freezed.dart';
part 'voice.g.dart';

@freezed
class Voice with _$Voice {
  factory Voice({
    required String name,
    required String link,
    required bool isActive,
  }) = _Voice;

  factory Voice.fromJson(Map<String, dynamic> json) => _$VoiceFromJson(json);
}
