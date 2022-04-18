import 'package:flutter/material.dart';
import 'package:tradilist_mobile/src/screens/dictionary/add_translation_dialog.dart';

class DialogHelper {
  static addTranslation(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.white70,
      builder: (context) => const AddTranslationDialog(),
    );
  }
}
