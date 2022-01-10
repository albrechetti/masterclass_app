import 'dart:math';

class PersonModel {
  double _weight = 0.0;
  double _height = 0.0;

  setWeight(double value) => _weight = value;

  setHeight(double value) => _height = value;

  double getBMI() {
    double bmi = _weight / pow(_height, 2) * 10000;
    return bmi;
  }
}
