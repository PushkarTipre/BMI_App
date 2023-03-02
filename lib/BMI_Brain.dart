import 'dart:math';

class Calculator_Brain {
  Calculator_Brain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a HIGHER then NORMAL body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a NORMAL body weight. Good job!';
    } else {
      return 'You have a LOWER than NORMAL body weight. Try to eat more';
    }
  }
}
