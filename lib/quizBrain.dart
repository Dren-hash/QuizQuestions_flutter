import 'questions.dart';

class QuizBrain {
  int _questionNumber =
      0; //take note of how questionNumber is made private. Basically Encapsulation
  final List<Question> _questionsBank = [
    Question(q: 'Human beings are living things', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(
        q: 'Approximately one quarter of human bones are in the palm',
        a: false),
  ];
  void theNextQuestion() {
    if (_questionNumber < _questionsBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionsBank[_questionNumber].questionAnswer;
  }
}
