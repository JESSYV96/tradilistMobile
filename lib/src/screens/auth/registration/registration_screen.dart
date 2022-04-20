import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tradilist_mobile/src/screens/auth/registration/view_model.dart';

import '../../../common/UIKit/default_button.dart';
import '../../../common/assets/ui_styles.dart';
import '../components/login_with_social_network.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegistrationViewModel>(
        create: (_) => RegistrationViewModel(),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Inscription'),
            ),
            body: Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _registrationForm(context),
                  const LoginWithSocialNetwork(),
                  _alreadyRegisteredWidget(context)
                ],
              ),
            ),
          );
        });
  }
}

Widget _registrationForm(BuildContext context) {
  final registrationViewModel = context.watch<RegistrationViewModel>();
  return Column(
    children: [
      Material(
        elevation: 15,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: TextFormField(
          decoration: textInputDecoration.copyWith(hintText: 'Username'),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 20),
      ),
      Material(
        elevation: 15,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: TextFormField(
          decoration: textInputDecoration.copyWith(
            hintText: 'Email',
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
          obscureText: registrationViewModel.obscurePassword,
          decoration: textInputDecoration.copyWith(
            hintText: 'Mot de passe',
            suffixIcon: GestureDetector(
              onTap: () {
                registrationViewModel.setObcurePassword();
              },
              child: registrationViewModel
                  .visibilityIcon(registrationViewModel.obscurePassword),
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
          obscureText: registrationViewModel.confirmObscurePassword,
          decoration: textInputDecoration.copyWith(
            hintText: 'Confirmer Mot de passe',
            suffixIcon: GestureDetector(
              onTap: () {
                registrationViewModel.setConfirmObcurePassword();
              },
              child: registrationViewModel
                  .visibilityIcon(registrationViewModel.confirmObscurePassword),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
      ),
      DefaultButton(
          text: 'S\'inscrire',
          width: 250,
          onButtonTap: () {
            context.goNamed('login');
          })
    ],
  );
}

Widget _alreadyRegisteredWidget(BuildContext context) {
  return Column(
    children: [
      const Text('Tu n\'as pas de compte ?'),
      TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        onPressed: () {
          context.goNamed('login');
        },
        child: const Text('Connecte toi'),
      ),
    ],
  );
}
