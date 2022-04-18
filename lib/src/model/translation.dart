class Translation {
  final String originLanguageText;
  final String targetLanguageText;

  Translation(this.originLanguageText, this.targetLanguageText);

  factory Translation.fromJson(Map<String, dynamic> json) {
    return Translation(json['originLanguageText'], json['targetLanguageText']);
  }
}
