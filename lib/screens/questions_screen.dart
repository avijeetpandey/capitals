import 'package:capitals/data/questions.dart';
import 'package:capitals/screens/result_screen.dart';
import 'package:capitals/utils/audio_helper.dart';
import 'package:capitals/utils/color_utils.dart';
import 'package:capitals/widgets/question_view.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  List<String> answers = [];
  var score = 0;

  Future<void> chooseAnswer(String answer) async {
    var isCorrectAnwer = false;
    if (currentQuestionIndex < questionnaire.length) {
      if (answer == questionnaire[currentQuestionIndex].answers[0]) {
        await AudioHelper.playCorrectAudio();
        isCorrectAnwer = true; // Await the correct audio to finish
      } else {
        await AudioHelper.playOopsAudio();
        isCorrectAnwer = false; // Await the oops audio to finish
      }

      setState(() {
        answers.add(answer);
        ++currentQuestionIndex;
        if (isCorrectAnwer) {
          ++score;
        }
      });

      // Check if it's the last question
      if (currentQuestionIndex == questionnaire.length) {
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultView(score: '$score'),
            ),
          ).then((_) {
            resetStateBeforePush();
          });
        });
      }
    }
  }

  void resetStateBeforePush() {
    setState(() {
      currentQuestionIndex = 0;
      answers = [];
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = currentQuestionIndex >= questionnaire.length
        ? dummyQuestionare
        : questionnaire[currentQuestionIndex];

    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: ColorUtils.defaultLinearGradient,
          ),
          child: QuestionView(
            questionObj: currentQuestion,
            onAnswerTapButton: chooseAnswer,
          ),
        ),
      ),
    );
  }
}
