import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  int height;
  int weight;
  double _BMI;
  String Result() {
    _BMI = weight / pow((height / 100), 2);
    return _BMI.toStringAsFixed(1);
  }

  String Compliment() {
    if (_BMI >= 25) {
      return 'OverWeight';
    } else if (_BMI > 18.5 && _BMI <= 24) {
      return 'Normal';
    } else
      return 'UnderWeight';
  }

  String Advise() {
    if (_BMI >= 25) {
      return 'You should exersice more and take a good ';
    } else if (_BMI >= 18.5 && _BMI <= 24) {
      return 'Good job you are maintaining yourr body';
    } else
      return 'You should eat more and healthy meal';
  }
}
