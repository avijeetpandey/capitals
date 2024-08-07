import 'package:capitals/data/questions.dart';
import 'package:capitals/widgets/answer_button.dart';
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

  void chooseAnswer(String answer) {
    answers.add(answer);
    setState(() {
      currentQuestionIndex++;
    });
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 64.0, vertical: 4.0),
                  child: AnswerButton(
                      onTap: () {
                        chooseAnswer(answer);
                      },
                      answerText: answer),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
