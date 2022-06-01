// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecificSeries _$$_SpecificSeriesFromJson(Map<String, dynamic> json) =>
    _$_SpecificSeries(
      title: json['title'] as String,
      description: json['description'] as String,
      videoLink: json['videoLink'] as String,
      voices: (json['voices'] as List<dynamic>)
          .map((e) => Voice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpecificSeriesToJson(_$_SpecificSeries instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'videoLink': instance.videoLink,
      'voices': instance.voices,
    };
