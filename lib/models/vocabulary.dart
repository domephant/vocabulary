import 'package:json_annotation/json_annotation.dart';

part 'vocabulary.g.dart';

@JsonSerializable()
class Vocabulary {
  final List<String> nativeLanguageMeanings;
  final List<String> newLanguageMeanings;
  final String language;
  final List<String> tags;
  final String additionalInformation;
  final int level;

  Vocabulary({
    required this.nativeLanguageMeanings,
    required this.newLanguageMeanings,
    required this.language,
    required this.tags,
    required this.additionalInformation,
    required this.level,
  });

  factory Vocabulary.fromJson(Map<String, dynamic> json) =>
      _$VocabularyFromJson(json);

  Map<String, dynamic> toJson() => _$VocabularyToJson(this);

  @override
  String toString() {
    return "Vocabulary(nativeLanguageMeanings: ${nativeLanguageMeanings.toString()}, newLanguageMeanings: ${newLanguageMeanings.toString()}, language: ${language.toString()}, tags: ${tags.toString()}, additionalInformation: ${additionalInformation.toString()}, level: ${level.toString()})";
  }
}
