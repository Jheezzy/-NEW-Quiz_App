import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var currentScreen = 'first-screen';

  void changeScreen() {
    setState(() {
      currentScreen = 'second-screen';
    });
  }
//* ChangeScreen method can't be used when this StartScreenState is created because it's too early, I'm creating the method and using it right when the state is created, but I noticed I could use that method in the build method cos that is happening AFTER the method is created in the state and not while it is just created

  // @override
  // void initState() {
  //   super.initState();
  //   currentScreen = FirstScreen(changeScreen);
  // }

  // void goBack() {
  //   setState(() {
  //     currentScreen = FirstScreen(changeScreen);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(changeScreen);

    if (currentScreen == 'second-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
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
        ),
      ),
    );
  }
}
