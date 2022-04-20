import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'src/common/helpers/create_material_color.dart';
import 'src/common/utils/colors.dart';
import 'src/home_screen.dart';
import 'src/screens/account/change_password/change_password_screen.dart';
import 'src/screens/auth/login/login_screen.dart';
import 'src/screens/auth/login/login_view_model.dart';
import 'src/screens/auth/registration/registration_screen.dart';
import 'src/screens/dictionary/translation_view_model.dart';

Future<void> main() async {
  runApp(MyApp());
}

class LoginInfo {
  static const isLoggedIn = true;
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  late final _router = GoRouter(
    initialLocation: '/login',
    debugLogDiagnostics: true,
    redirect: (state) {
      // const bool isLoggedIn = LoginInfo.isLoggedIn;
      // final bool isLogging = state.subloc == '/login';

      // if (!isLoggedIn && !isLogging) return '/login';
      // if (isLoggedIn && isLogging) return '/';

      return null;
    },
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            name: 'changePassword',
            path: 'profile/change-password',
            builder: (context, state) => const ChangePasswordScreen(),
          ),
        ],
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'registration',
        path: '/register',
        builder: (context, state) => const RegistrationScreen(),
      ),
    ],
    errorBuilder: (context, state) => const Text('ERROR'),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TranslationViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ],
      child: MaterialApp.router(
        title: 'Tradilist',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.background,
            foregroundColor: AppColors.textColor,
            elevation: 0,
          ),
          fontFamily: 'LemonMilk',
          primarySwatch: createMaterialColor(AppColors.primary),
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 10.0),
            button: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          backgroundColor: AppColors.background,
        ),
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
      ),
    );
  }
}
