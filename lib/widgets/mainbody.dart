import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/questions_screen.dart';

import 'start_screen.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  late Widget screenWidget;

  @override
  void initState() {
    super.initState();
    screenWidget = StartScreen(changeScreen);
  }

  void changeScreen() {
    setState(() {
      screenWidget = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    // var questionsScreen = QuestionsScreen();
    // late Widget screenWidget;

    // if (screenWidget == screenWidget) {
    //   screenWidget = screenWidget;
    // }
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: screenWidget,
        // child: screenWidget == screenWidget() ? screenWidget() : questionsScreen,
      ),
    );
  }
}
