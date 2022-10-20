import 'package:chewie/chewie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mult_love/features/specific_series/data/models/voice.dart';

part 'specific_series.freezed.dart';

@freezed
class SpecificSeries with _$SpecificSeries {
  factory SpecificSeries({
    required String title,
    required String description,
    required String videoLink,
    required String imageUrl,
    required String serialTitle,
    required String seasonNumber,
    required String seriesIndex,
    required String serialLink,
    required List<Voice> voices,
    required List<Subtitle>? subtitles,
  }) = _SpecificSeries;
}
