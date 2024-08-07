class QuizQuestion {
  final String question;
  final List<String> answers;

  QuizQuestion({required this.question, required this.answers});

  // randomizing the answers
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
