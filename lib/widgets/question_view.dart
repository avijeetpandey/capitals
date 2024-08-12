import 'package:capitals/models/quiz_question.dart';
import 'package:capitals/widgets/anwer_button.dart';
import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView(
      {super.key, required this.questionObj, required this.onAnswerTapButton});

  final QuizQuestion questionObj;
  final Function(String answer) onAnswerTapButton;

  @override
  Widget build(BuildContext context) {
    if (questionObj.question == "END") {
      return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Hurray you attempted all questions!",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questionObj.question,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        ...questionObj.getShuffledAnswers().map((answer) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 48.0, vertical: 4.0),
            child: AnswerButton(
                onTap: () {
                  onAnswerTapButton(answer);
                },
                answerText: answer),
          );
        }),
      ],
    );
  }
}
