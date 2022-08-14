// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vocabulary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vocabulary _$VocabularyFromJson(Map<String, dynamic> json) => Vocabulary(
      nativeLanguageMeanings: (json['nativeLanguageMeanings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      newLanguageMeanings: (json['newLanguageMeanings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      language: json['language'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      additionalInformation: json['additionalInformation'] as String,
      level: json['level'] as int,
    );

Map<String, dynamic> _$VocabularyToJson(Vocabulary instance) =>
    <String, dynamic>{
      'nativeLanguageMeanings': instance.nativeLanguageMeanings,
      'newLanguageMeanings': instance.newLanguageMeanings,
      'language': instance.language,
      'tags': instance.tags,
      'additionalInformation': instance.additionalInformation,
      'level': instance.level,
    };
