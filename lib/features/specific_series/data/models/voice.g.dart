// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voice _$$_VoiceFromJson(Map<String, dynamic> json) => _$_Voice(
      name: json['name'] as String,
      link: json['link'] as String,
      isActive: json['isActive'] as bool,
      isSub: json['isSub'] as bool,
      subType: $enumDecodeNullable(_$SubTypeEnumMap, json['subType']),
    );

Map<String, dynamic> _$$_VoiceToJson(_$_Voice instance) => <String, dynamic>{
      'name': instance.name,
      'link': instance.link,
      'isActive': instance.isActive,
      'isSub': instance.isSub,
      'subType': _$SubTypeEnumMap[instance.subType],
    };

const _$SubTypeEnumMap = {
  SubType.eng: 'eng',
  SubType.rus: 'rus',
};
