import 'package:capitals/models/quiz_question.dart';
import 'package:capitals/widgets/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsView extends StatefulWidget {
  QuestionsView(
      {super.key, required this.questionObj, required this.onAnswerButtonTap});
  final QuizQuestion questionObj;
  final Function(String answer) onAnswerButtonTap;

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.questionObj.question,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        ...widget.questionObj.getShuffledAnswers().map((answer) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 48.0, vertical: 4.0),
            child: AnswerButton(
                onTap: () {
                  widget.onAnswerButtonTap(answer);
                },
                answerText: answer),
          );
        }),
      ],
    );
  }
}
