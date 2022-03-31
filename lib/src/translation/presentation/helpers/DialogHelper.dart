import 'package:flutter/material.dart';
import 'package:tradilist_mobile/src/translation/presentation/components/AddTranslationDialog.dart';

class DialogHelper {
  static addTranslation(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.white70,
      builder: (context) => const AddTranslationDialog(),
    );
  }
}
