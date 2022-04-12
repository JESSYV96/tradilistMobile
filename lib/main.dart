import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradilist_mobile/src/auth/view_models/login_view_model.dart';
import 'package:tradilist_mobile/src/common/helpers/create_material_color.dart';
import 'package:tradilist_mobile/src/common/utils/colors.dart';
import 'package:tradilist_mobile/src/dictionary/view_models/translation_view_model.dart';

import 'src/router/app_router.gr.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            bodyText1: TextStyle(fontSize: 12.0),
            button: TextStyle(fontSize: 13.0, color: Colors.white),
          ),
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
