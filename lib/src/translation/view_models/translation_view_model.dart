import 'package:flutter/material.dart';
import 'package:tradilist_mobile/src/translation/models/translation.dart';
import 'package:tradilist_mobile/src/translation/repositories/remote/translation_repository.dart';

class TranslationViewModel extends ChangeNotifier {
  bool _isLoading = false;
  late List<Translation> _translations = [];

  TranslationViewModel() {
    getTranslations();
  }

  bool get loading => _isLoading;
  setLoading(bool loading) async {
    _isLoading = loading;
    notifyListeners();
  }

  List<Translation> get translations => _translations;
  setTranslations(List<Translation> translations) {
    _translations = translations;
  }

  getTranslations() async {
    setLoading(true);
    final translations = await TranslationRepository.fetchTranslations();
    setTranslations(translations);
    setLoading(false);
  }
}
