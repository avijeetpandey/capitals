import 'package:capitals/data/questions.dart';
import 'package:capitals/utils/audio_helper.dart';
import 'package:capitals/widgets/questions_view.dart';
import 'package:capitals/widgets/result_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> answers = [];
  var currentQuestionIndex = 0; // Start from 0 to access the first element

  Future<void> chooseAnswer(String answer, BuildContext context) async {
    if (currentQuestionIndex < questionnaire.length) {
      if (answer == questionnaire[currentQuestionIndex].answers[0]) {
        await AudioHelper
            .playCorrectAudio(); // Await the correct audio to finish
      } else {
        await AudioHelper.playOopsAudio(); // Await the oops audio to finish
      }

      setState(() {
        answers.add(answer);
        currentQuestionIndex += 1;
      });

      // Check if it's the last question
      if (currentQuestionIndex >= questionnaire.length) {
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            resetStateBeforePush();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultView(score: "score"),
              ),
            );
          });
        });
      }
    }
  }

  void resetStateBeforePush() {
    currentQuestionIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questionnaire[
        currentQuestionIndex == questionnaire.length
            ? questionnaire.length - 1
            : currentQuestionIndex];

    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: QuestionsView(
            questionObj: currentQuestion,
            onAnswerButtonTap: chooseAnswer,
          ),
        ),
      ),
    );
  }
}
