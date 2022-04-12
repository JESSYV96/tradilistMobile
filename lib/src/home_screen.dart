import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tradilist_mobile/src/router/app_router.gr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final IAccountViewModel _accountScreenViewModel = AccountViewModel();

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        leading: const AutoBackButton(),
      ),
      routes: const [
        DictionaryRouter(),
        QuizRouter(),
        AccountRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => BottomNavigationBar(
        onTap: (index) {
          tabsRouter.setActiveIndex(index);
        },
        currentIndex: tabsRouter.activeIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: "")
        ],
      ),
    );
  }
}
