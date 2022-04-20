import 'package:flutter/material.dart';

import 'screens/account/profile/account_screen.dart';
import 'screens/dictionary/dictionary_screen.dart';
import 'screens/quiz/quiz_theme_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
  }

  void setScreenIndex(int index) {
    setState(() {
      currentIndex = index;
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setScreenIndex(index),
        currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add_outlined, size: 30),
              label: "Dictionary"),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer_outlined, size: 30),
              label: "Quiz"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, size: 30),
              label: "Account")
        ],
      ),
    );
  }
}
