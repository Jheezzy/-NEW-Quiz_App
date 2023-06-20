import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[0];
    var myMap = [
      {'question': 'question', 'answer': 'answer'}
    ];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          ...currentQuestion.answer.map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {},
            );
          })
        ],
      ),
    );
  }
}
