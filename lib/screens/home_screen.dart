import 'package:capitals/data/questions.dart';
import 'package:capitals/widgets/questions_view.dart';
import 'package:capitals/widgets/result_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> answers = [];
  var currentQuestionIndex = 0;
  String activeScreen = 'home-page';

  void chooseAnswer(String answer) {
    // if it is a valid range update and set the state
    if (currentQuestionIndex < questionnaire.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      setState(() {
        activeScreen = 'final-screen';
      });
    }

    // add answers only if it is not present
    if (!answers.contains(answer)) {
      answers.add(answer);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionnaire[currentQuestionIndex];

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
          child: activeScreen == 'final-screen'
              ? const ResultView()
              : QuestionsView(
                  questionObj: currentQuestion,
                  onAnswerButtonTap: chooseAnswer),
        ),
      ),
    );
  }
}
