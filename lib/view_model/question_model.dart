enum Questiontype {
  multipleAnswer,
  trueOrFalse,
  typeAnswer,
  voiceNote,
  checkBox,
  poll,
  puzzle,
}

class QuestionModel {
  final int questionNumber;
  final String questionText;
  Questiontype questionType;
  final List<String> options;

  QuestionModel({
    required this.questionNumber,
    required this.questionText,
    required this.questionType,
    required this.options,
  });
}
