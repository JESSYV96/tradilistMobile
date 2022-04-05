import 'package:flutter/material.dart';
import 'package:tradilist_mobile/src/account/screens/account_screen.dart';
import 'package:tradilist_mobile/src/dictionary/presentation/screens/dictionary_screen.dart';
import 'package:tradilist_mobile/src/quiz/screens/quiz_theme_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void setScreenIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) => setScreenIndex(index),
        controller: _pageController,
        children: const [DictionaryScreen(), QuizScreen(), AccountScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setScreenIndex(index),
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 24), label: "Dictionary"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 24), label: "Quiz"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 24), label: "Account")
        ],
      ),
    );
  }
}
