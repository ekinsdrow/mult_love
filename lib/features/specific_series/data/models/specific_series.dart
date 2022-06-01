import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/specific_series/data/models/voice.dart';

part 'specific_series.freezed.dart';
part 'specific_series.g.dart';

@freezed
class SpecificSeries with _$SpecificSeries {
  factory SpecificSeries({
    required String title,
    required String description,
    required String videoLink,
    required String imageUrl,
    required List<Voice> voices,
  }) = _SpecificSeries;

  factory SpecificSeries.fromJson(Map<String, dynamic> json) =>
      _$SpecificSeriesFromJson(json);
}
