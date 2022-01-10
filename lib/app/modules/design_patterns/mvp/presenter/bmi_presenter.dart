import 'package:masterclass_app/app/modules/design_patterns/mvp/model/person_model.dart';
import 'package:masterclass_app/app/modules/design_patterns/mvp/presenter/bmi_presenter_interface.dart';

class BmiPresenter {
  final person = PersonModel();
  final IBmiPresenter contract;
  String? result;

  BmiPresenter({
    required this.contract,
  });

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

    contract.update();
  }
}
