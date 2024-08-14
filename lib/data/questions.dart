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
  QuizQuestion(
    question: "What is the capital of ${IndianState.ASSAM}?",
    answers: [
      IndianCapital.ASSAM,
      IndianCapital.JHARKHAND,
      IndianCapital.GOA,
      IndianCapital.DELHI
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.BIHAR}?",
    answers: [
      IndianCapital.BIHAR,
      IndianCapital.MAHARASHTRA,
      IndianCapital.MP,
      IndianCapital.JHARKHAND
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.CHATTISGARH}?",
    answers: [
      IndianCapital.CHATTISGARH,
      IndianCapital.HARYANA,
      IndianCapital.TRIPURA,
      IndianCapital.PUNJAB
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.GOA}?",
    answers: [
      IndianCapital.GOA,
      IndianCapital.MANIPUR,
      IndianCapital.RAJASTHAN,
      IndianCapital.NAGALAND
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.GUJARAT}?",
    answers: [
      IndianCapital.GUJARAT,
      IndianCapital.SIKKIM,
      IndianCapital.MAHARASHTRA,
      IndianCapital.UP
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.HARYANA}?",
    answers: [
      IndianCapital.HARYANA,
      IndianCapital.HIMACHAL,
      IndianCapital.ODISHA,
      IndianCapital.WB
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.HIMACHAL}?",
    answers: [
      IndianCapital.HIMACHAL,
      IndianCapital.BIHAR,
      IndianCapital.TAMILNADU,
      IndianCapital.TELENGANA
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.JHARKHAND}?",
    answers: [
      IndianCapital.JHARKHAND,
      IndianCapital.GOA,
      IndianCapital.UK,
      IndianCapital.UP
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.KARNATAKA}?",
    answers: [
      IndianCapital.KARNATAKA,
      IndianCapital.KERELA,
      IndianCapital.TELENGANA,
      IndianCapital.TAMILNADU
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.KERELA}?",
    answers: [
      IndianCapital.KERELA,
      IndianCapital.BIHAR,
      IndianCapital.TAMILNADU,
      IndianCapital.TELENGANA
    ],
  ),
  QuizQuestion(
    question: "What is the capital of ${IndianState.MAHARASHTRA}?",
    answers: [
      IndianCapital.MAHARASHTRA,
      IndianCapital.DELHI,
      IndianCapital.CHATTISGARH,
      IndianCapital.PUNJAB
    ],
  ),
];

final dummyQuestionare = QuizQuestion(
  question: "END",
  answers: [],
);
