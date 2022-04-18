import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradilist_mobile/src/common/helpers/dialog_helper.dart';
import 'package:tradilist_mobile/src/common/UIKit/loading.dart';
import 'package:tradilist_mobile/src/common/utils/colors.dart';
import 'translation_view_model.dart';

class DictionaryScreen extends StatelessWidget {
  const DictionaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TranslationViewModel translationVM = context.watch<TranslationViewModel>();
    if (translationVM.loading) {
      return const Loading();
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() => DialogHelper.addTranslation(context)),
        backgroundColor: AppColors.secondary,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  translationVM.translations[index].originLanguageText,
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  translationVM.translations[index].targetLanguageText,
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          );
        },
        itemCount: translationVM.translations.length,
      ),
    );
  }
}
