import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../common/UIKit/default_button.dart';
import '../../../common/assets/ui_styles.dart';
import 'view_model.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangePasswordViewModel>(
      create: (_) => ChangePasswordViewModel(),
      builder: (context, child) {
        ChangePasswordViewModel changePasswordVM =
            context.watch<ChangePasswordViewModel>();
        bool oldObscurePassword = changePasswordVM.oldObscurePassword;
        bool newObscurePassword = changePasswordVM.newObscurePassword;
        bool confirmObscurePassword = changePasswordVM.confirmObscurePassword;
        return Scaffold(
          appBar: AppBar(title: const Text('Changement de mot de passe')),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Column(
                  children: const [
                    Text('Bobby'),
                    Text(
                      'bobby.brown@email.fr',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Material(
                  elevation: 15,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: TextFormField(
                    obscureText: oldObscurePassword,
                    decoration: textInputDecoration.copyWith(
                      hintText: 'Ancien Mot de passe',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          changePasswordVM.setOldObcurePassword();
                        },
                        child:
                            changePasswordVM.visibilityIcon(oldObscurePassword),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Material(
                  elevation: 15,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: TextFormField(
                    obscureText: newObscurePassword,
                    decoration: textInputDecoration.copyWith(
                      hintText: 'Nouveau Mot de passe',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          changePasswordVM.setNewObcurePassword();
                        },
                        child:
                            changePasswordVM.visibilityIcon(newObscurePassword),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                Material(
                  elevation: 15,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: TextFormField(
                    obscureText: confirmObscurePassword,
                    decoration: textInputDecoration.copyWith(
                      hintText: 'Confirmation Mot de passe',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          changePasswordVM.setConfirmObcurePassword();
                        },
                        child: changePasswordVM
                            .visibilityIcon(confirmObscurePassword),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                DefaultButton(
                  text: 'Confirmer',
                  width: 150,
                  onButtonTap: () => context.goNamed('login'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
