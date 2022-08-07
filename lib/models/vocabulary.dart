class Vocabulary {
  List<String> nativeLanguageMeanings;
  List<String> newLanguageMeanings;
  String language;
  List<String> tags;
  String additionalInformation;
  int level;

  Vocabulary(
    this.nativeLanguageMeanings,
    this.newLanguageMeanings,
    this.language,
    this.tags,
    this.additionalInformation,
    this.level,
  );

  @override
  String toString() {
    return "Vocabulary(nativeLanguageMeanings: ${nativeLanguageMeanings.toString()}, newLanguageMeanings: ${newLanguageMeanings.toString()}, language: ${language.toString()}, tags: ${tags.toString()}, additionalInformation: ${additionalInformation.toString()}, level: ${level.toString()})";
  }
}
