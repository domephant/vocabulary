import 'package:json_annotation/json_annotation.dart';

part 'vocab_tag.g.dart';

@JsonSerializable()
class VocabTag {
  final String name;
  final String color;

  VocabTag({required this.name, required this.color});

  factory VocabTag.fromJson(Map<String, dynamic> json) =>
      _$VocabTagFromJson(json);

  Map<String, dynamic> toJson() => _$VocabTagToJson(this);

  @override
  String toString() {
    return "VocabTag(name: $name, color: $color)";
  }
}
