import 'package:flutter/material.dart';

import 'quiz.dart';

void main(List<String> args) {
  runApp(const Quiz());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quiz(),
    );
  }
}
