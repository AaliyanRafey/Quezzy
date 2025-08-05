import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queezy_app/view_model/question_model.dart';
import 'package:queezy_app/views/Create_Quiz/submit_quiz_view.dart';

// This controller manages the quiz screen’s state using GetX.
// It holds the list of questions, tracks the current step, and updates question types.

class QuizController extends GetxController {
  // Tracks the current question index (stepper).
  // .obs makes it reactive — so whenever this changes, the UI updates.
  var selectedQuestionIndex = 0.obs;

  // Keeps track of the selected question type (e.g., MCQ, True/False).
  // Also reactive using .obs, so the dropdown and view below update automatically.
  var selectedQuestionType = Questiontype.multipleAnswer.obs;

  // List of 10 questions initialized with default values.
  // Each question has a number, text, type, and 4 default options.
  List<QuestionModel> questions = List.generate(
    10,
    (index) => QuestionModel(
      questionNumber: index, // For internal tracking (e.g., 0–9)
      questionText: 'Add Question', // Default placeholder text
      questionType: Questiontype.multipleAnswer, // Default type
      options: [
        'Add answer',
        'Add answer',
        'Add answer',
        'Add answer',
      ], // Default empty answers
    ),
  );

  // Called when the user taps on a number in the stepper row (1 to 10).
  // It updates both the current index and the dropdown selection.
  void changeQuestion(int index) {
    selectedQuestionIndex.value = index; // Go to this step
    selectedQuestionType.value =
        questions[index].questionType; // Load its question type into dropdown
  }

  // Called when the user selects a different question type from the dropdown.
  // It updates the selected question’s type in the list.
  void changeQuestionType(Questiontype type) {
    selectedQuestionType.value = type; // Change dropdown state
    questions[selectedQuestionIndex.value].questionType =
        type; // Update the corresponding question
  }

  // for next question click and move on to next question

  void nextQuestion(BuildContext context) {
    if (selectedQuestionIndex < 9) {
      selectedQuestionIndex++;
    } else {
      Get.to(SubmitQuizView());
    }
  }
}
