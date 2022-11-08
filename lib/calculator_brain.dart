import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;

  double get _bmi => weight / pow(height / 100, 2);

  String get bmi => (weight / pow(height / 100, 2)).toStringAsFixed(1);

  String get result {
    if (_bmi >= 25) {
      return 'Overweight';
    }

    if (_bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String get interpretation {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }

    if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    }

    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
