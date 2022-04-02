import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradilist_mobile/src/auth/presentation/components/login_with_social_network.dart';
import 'package:tradilist_mobile/src/auth/view_models/login_view_model.dart';
import 'package:tradilist_mobile/src/common/assets/ui_styles.dart';

import '../../../common/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginViewModel loginVM = context.watch<LoginViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('CONNEXION'),
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: Theme.of(context).appBarTheme.elevation,
      ),
      body: Container(
        color: AppColors.background,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _loginForm(loginVM),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(20),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 20)),
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
                child: const Text(
                  'Se connecter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const LoginWithSocialNetwork(),
            Column(
              children: [
                const Text('Tu as dejà un compte ?'),
                TextButton(
                  style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: const Text('Connecte toi'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _loginForm(LoginViewModel loginVM) {
  return Column(
    children: [
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
          obscureText: loginVM.isObcurePassword,
          decoration: textInputDecoration.copyWith(
            hintText: 'Mot de passe',
            suffixIcon: GestureDetector(
              onTap: () {
                loginVM.setObcurePassword();
              },
              child: loginVM.displayVisibilityIcon(),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(bottom: 10),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              style: ButtonStyle(
                overlayColor:
                    MaterialStateProperty.all<Color>(Colors.transparent),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black54),
              ),
              onPressed: () {},
              child: const Text('Mot de passe oublié ?'))
        ],
      )
    ],
  );
}
