// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i8;

import '../account/screens/account_screen.dart' as _i5;
import '../account/screens/change_password_screen.dart' as _i6;
import '../auth/presentation/screens/login_screen.dart' as _i2;
import '../dictionary/presentation/screens/dictionary_screen.dart' as _i4;
import '../home_screen.dart' as _i1;
import '../quiz/screens/quiz_theme_screen.dart' as _i7;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    LoginScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    DictionaryRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    AccountRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    QuizRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    DictionaryScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DictionaryScreen());
    },
    AccountScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AccountScreen());
    },
    ChangePasswordScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChangePasswordScreen());
    },
    QuizScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.QuizScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeScreen.name, path: '/', children: [
          _i3.RouteConfig(DictionaryRouter.name,
              path: 'dictionary',
              parent: HomeScreen.name,
              children: [
                _i3.RouteConfig(DictionaryScreen.name,
                    path: '', parent: DictionaryRouter.name)
              ]),
          _i3.RouteConfig(AccountRouter.name,
              path: 'account',
              parent: HomeScreen.name,
              children: [
                _i3.RouteConfig(AccountScreen.name,
                    path: '', parent: AccountRouter.name),
                _i3.RouteConfig(ChangePasswordScreen.name,
                    path: 'changePassword', parent: AccountRouter.name)
              ]),
          _i3.RouteConfig(QuizRouter.name,
              path: 'quiz',
              parent: HomeScreen.name,
              children: [
                _i3.RouteConfig(QuizScreen.name,
                    path: '', parent: QuizRouter.name)
              ])
        ]),
        _i3.RouteConfig(LoginScreen.name, path: '/login')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i3.PageRouteInfo<void> {
  const HomeScreen({List<_i3.PageRouteInfo>? children})
      : super(HomeScreen.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i3.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class DictionaryRouter extends _i3.PageRouteInfo<void> {
  const DictionaryRouter({List<_i3.PageRouteInfo>? children})
      : super(DictionaryRouter.name,
            path: 'dictionary', initialChildren: children);

  static const String name = 'DictionaryRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class AccountRouter extends _i3.PageRouteInfo<void> {
  const AccountRouter({List<_i3.PageRouteInfo>? children})
      : super(AccountRouter.name, path: 'account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i3.EmptyRouterPage]
class QuizRouter extends _i3.PageRouteInfo<void> {
  const QuizRouter({List<_i3.PageRouteInfo>? children})
      : super(QuizRouter.name, path: 'quiz', initialChildren: children);

  static const String name = 'QuizRouter';
}

/// generated route for
/// [_i4.DictionaryScreen]
class DictionaryScreen extends _i3.PageRouteInfo<void> {
  const DictionaryScreen() : super(DictionaryScreen.name, path: '');

  static const String name = 'DictionaryScreen';
}

/// generated route for
/// [_i5.AccountScreen]
class AccountScreen extends _i3.PageRouteInfo<void> {
  const AccountScreen() : super(AccountScreen.name, path: '');

  static const String name = 'AccountScreen';
}

/// generated route for
/// [_i6.ChangePasswordScreen]
class ChangePasswordScreen extends _i3.PageRouteInfo<void> {
  const ChangePasswordScreen()
      : super(ChangePasswordScreen.name, path: 'changePassword');

  static const String name = 'ChangePasswordScreen';
}

/// generated route for
/// [_i7.QuizScreen]
class QuizScreen extends _i3.PageRouteInfo<void> {
  const QuizScreen() : super(QuizScreen.name, path: '');

  static const String name = 'QuizScreen';
}
