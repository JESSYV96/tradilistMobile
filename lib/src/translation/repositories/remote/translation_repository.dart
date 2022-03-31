import 'package:tradilist_mobile/src/translation/models/translation.dart';

class TranslationRepository {
  static Future<List<Translation>> fetchTranslations() async {
    try {
      final List<Translation> translations = [
        Translation('Une voiture', 'A car'),
        Translation('Un vélo', 'A bike'),
        Translation('Un ordinateur portable', 'A laptop'),
      ];

      return translations;
    } catch (e) {
      throw Exception(e);
    }
  }
}
