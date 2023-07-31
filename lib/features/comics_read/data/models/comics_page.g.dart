// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicsModelPage _$$_ComicsModelPageFromJson(Map<String, dynamic> json) =>
    _$_ComicsModelPage(
      currentImage:
          ComicsImage.fromJson(json['currentImage'] as Map<String, dynamic>),
      pageCount: json['pageCount'] as int,
      currentPageIndex: json['currentPageIndex'] as int,
    );

Map<String, dynamic> _$$_ComicsModelPageToJson(_$_ComicsModelPage instance) =>
    <String, dynamic>{
      'currentImage': instance.currentImage,
      'pageCount': instance.pageCount,
      'currentPageIndex': instance.currentPageIndex,
    };
