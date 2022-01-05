import 'package:masterclass_app/app/modules/playground/design_pattern/controller_pattern/models/person_model.dart';

class BmiPageController {
  final person = PersonModel();
  String? result;
  void calculateBmi() {
    double bmi = person.getBMI();
    if (bmi < 18) {
      result = 'Resultado: ${bmi.toStringAsFixed(2)} - Abaixo do peso';
    }
    if (bmi >= 18.5) {
      result = 'Resultado: ${bmi.toStringAsFixed(2)} - Peso normal';
    }
    if (bmi >= 25 && bmi <= 30) {
      result = 'Resultado: ${bmi.toStringAsFixed(2)} - Acima do peso';
    }
    if (bmi > 30) {
      result = 'Resultado: ${bmi.toStringAsFixed(2)} - Obesidade';
    }
  }
}
