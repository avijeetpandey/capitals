// ignore_for_file: must_be_immutable

import 'package:capitals/utils/color_utils.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  const ResultView({super.key, required this.score});
  final String score;

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  void moveBackToParentScreen() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Final Score',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: ColorUtils.defaultPurpleColor,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: ColorUtils.defaultLinearGradient,
          ),
          child: Column(
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
                  fontSize: 64,
                  color: Color.fromARGB(255, 248, 177, 0),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  backgroundColor: const Color.fromARGB(255, 33, 1, 95),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Retry"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
