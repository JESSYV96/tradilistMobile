import 'package:auto_route/auto_route.dart';
import 'package:tradilist_mobile/src/account/screens/account_screen.dart';
import 'package:tradilist_mobile/src/auth/presentation/screens/login_screen.dart';
import 'package:tradilist_mobile/src/dictionary/presentation/screens/dictionary_screen.dart';
import 'package:tradilist_mobile/src/home_screen.dart';
import 'package:tradilist_mobile/src/quiz/screens/quiz_theme_screen.dart';

import '../account/screens/change_password_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomeScreen,
      children: [
        AutoRoute(
          path: 'dictionary',
          name: 'DictionaryRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: DictionaryScreen),
          ],
        ),
        AutoRoute(
          path: 'account',
          name: 'AccountRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: AccountScreen),
            AutoRoute(path: 'changePassword', page: ChangePasswordScreen),
          ],
        ),
        AutoRoute(
          path: 'quiz',
          name: 'QuizRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: QuizScreen),
          ]
        ),
      ],
    ),
    AutoRoute(path: '/login', page: LoginScreen),
  ],
)
class $AppRouter {}
