import 'package:flutter/material.dart';
import 'package:tradilist_mobile/src/common/assets/ui_styles.dart';
import 'package:tradilist_mobile/src/common/utils/colors.dart';

class AddTranslationDialog extends StatelessWidget {
  const AddTranslationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.primary,
      child: Container(
        height: 500,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              textAlignVertical: TextAlignVertical.top,
              decoration: textInputDecoration.copyWith(
                  hintText: 'Mot ou expression à traduire',
                  contentPadding:
                      const EdgeInsets.only(top: 15, left: 10, bottom: 100.0)),
            ),
            TextFormField(
              textAlignVertical: TextAlignVertical.top,
              decoration: textInputDecoration.copyWith(
                hintText: 'Traduction',
                contentPadding:
                    const EdgeInsets.only(top: 15, left: 10, bottom: 100.0),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 20)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.secondary)),
                child: const Text('Ajouter'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
