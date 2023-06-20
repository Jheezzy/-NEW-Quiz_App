import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/mainbody.dart';

void main(List<String> args) {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainBody(),
    );
  }
}
