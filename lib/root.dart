import 'package:capitals/screens/questions_screen.dart';
import 'package:flutter/material.dart';

class CaptialsApp extends StatelessWidget {
  const CaptialsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Capitals',
      home: QuestionsScreen(),
    );
  }
}
