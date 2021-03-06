import 'Question.dart';

class QuizBrain {
  int _qnumber = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];
  void nextQuestion() {
    if (_qnumber < _questionBank.length - 1) {
      _qnumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_qnumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_qnumber].questionAnswer;
  }

  bool isFinished() {
    if (_qnumber >= _questionBank.length - 1)
      return true;
    else
      return false;
  }

  void reset() {
    _qnumber = 0;
  }
}
