import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;
  void changeQuestion() {
    setState(() {
      currentIndex += 1;
    });
    // print('changed');
  }

  @override
  Widget build(BuildContext context) {
    // var currentQuestion = ;
    // for (var i = 0; i < count; i++) {

    // }
    var myMap = [
      {
        'question1': 'What are the main building blocks of Flutter UIs?',
        'answer1': 'Widgets'
      },
      {
        'question2': 'How are Flutter UIs built?',
        'answer2': 'By combining widgets in code'
      },
      {
        'question3': 'What\'s the purpose of a StatefulWidget?',
        'answer3': 'Update UI as data changes'
      },
      {
        'question4':
            'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
        'answer4': 'StatelessWidget'
      },
      {
        'question5': 'What happens if you change data in a StatelessWidget?',
        'answer5': 'The UI is not updated'
      },
      {
        'question6': 'How should you update data inside of StatefulWidgets?',
        'answer6': 'By calling setState()'
      },
    ];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questions[currentIndex].text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            ...questions[currentIndex].answer.map((answer) {
              return AnswerButton(
                  answerText: answer, onPressed: changeQuestion);
            })
          ],
        ),
      ),
    );
  }
}
