import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tradilist_mobile/src/common/assets/ui_styles.dart';
import 'package:tradilist_mobile/src/screens/auth/components/login_with_social_network.dart';

import '../../../common/utils/colors.dart';
import 'login_view_model.dart';

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
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _loginForm(loginVM),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.goNamed('home'),
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
            _notRegisteredWidget(context)
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
              child: loginVM.passwordVisibilityIcon(),
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
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
            ),
            onPressed: () {},
            child: const Text('Mot de passe oubli?? ?'),
          )
        ],
      )
    ],
  );
}

Widget _notRegisteredWidget(BuildContext context) {
  return Column(
    children: [
      const Text('Tu n\'as pas de compte ?'),
      TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        onPressed: () {
          context.goNamed('registration');
        },
        child: const Text('Inscris toi'),
      ),
    ],
  );
}
