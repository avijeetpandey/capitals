// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  ResultView({super.key, required this.currentScreen, required this.score});
  String currentScreen;
  final String score;

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  void moveBackToParentScreen() {
    setState(() {
      widget.currentScreen = 'home-page';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Your final score is",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        Text(
          widget.score,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 64, color: Color.fromARGB(255, 248, 177, 0)),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor: const Color.fromARGB(255, 33, 1, 95),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            onPressed: () {
              moveBackToParentScreen();
            },
            child: const Text("Retry")),
      ],
    );
  }
}
