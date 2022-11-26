import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.weight,
    required this.height,
    this.bmi = 0,
  });

  final int height;
  final int weight;

  double bmi;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return '과체중';
    } else if (bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return '오늘부터 고구마랑 결혼 ㅋ';
    } else if (bmi > 18.5) {
      return '좋아 먹던대로 먹자구';
    } else {
      return '좀 많이 먹어 !!';
    }
  }
}
