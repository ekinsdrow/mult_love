import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/specific_series/data/models/sub_type.dart';

part 'voice.freezed.dart';
part 'voice.g.dart';

@freezed
class Voice with _$Voice {
  factory Voice({
    required String name,
    required String link,
    required bool isActive,
    required bool isSub,
    required SubType? subType,
  }) = _Voice;

  factory Voice.fromJson(Map<String, dynamic> json) => _$VoiceFromJson(json);
}
