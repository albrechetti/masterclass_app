import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/utils/navigation_controller.dart';

class AppBarController {
  final navigationController = Modular.get<NavigationController>();
  String? defaultTile;

  String _titlePage() {
    if (navigationController.atActivity) {
      return "Atividades";
    }
    if (navigationController.atRepository) {
      return "Repositório";
    }
    if (navigationController.atAbout) {
      return "Sobre";
    } else {
      return defaultTile!;
    }
  }

  setDefaultTile(String? value) {
    defaultTile = value;
  }

  String get title => _titlePage();
}
