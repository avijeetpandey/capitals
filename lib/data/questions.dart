import 'package:capitals/data/capital_names.dart';
import 'package:capitals/data/states.dart';
import 'package:capitals/models/quiz_question.dart';

final List<QuizQuestion> questionnaire = [
  QuizQuestion(
    question: "What is the capital of India?",
    answers: [
      IndianCapital.DELHI,
      IndianCapital.CHATTISGARH,
      IndianCapital.HARYANA,
      IndianCapital.ASSAM
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.ANDRA}?",
    answers: [
      IndianCapital.ANDRA,
      IndianCapital.HIMACHAL,
      IndianCapital.BIHAR,
      IndianCapital.MEGHALAYA
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.ARUNACHAL}?",
    answers: [
      IndianCapital.ARUNACHAL,
      IndianCapital.MANIPUR,
      IndianCapital.KARNATAKA,
      IndianCapital.DELHI
    ],
  ),
];
