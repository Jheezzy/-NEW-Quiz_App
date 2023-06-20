import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Image.asset('quiz-logo.png'),
            const Text('Learn Flutter the fun way!'),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'))
          ],
        ),
      ),
    );
  }
}
