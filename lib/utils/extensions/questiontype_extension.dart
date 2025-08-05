import 'package:queezy_app/view_model/question_model.dart';

extension QuestionTypeExtension on Questiontype {
  String get label {
    switch (this) {
      case Questiontype.multipleAnswer:
        return 'Multiple Answer';
      case Questiontype.trueOrFalse:
        return 'True or False';
      case Questiontype.typeAnswer:
        return 'Type Answer';
      case Questiontype.voiceNote:
        return 'Voice Note';
      case Questiontype.checkBox:
        return 'CheckBox';
      case Questiontype.poll:
        return 'Poll';
      case Questiontype.puzzle:
        return 'Puzzle';
    }
  }
}
