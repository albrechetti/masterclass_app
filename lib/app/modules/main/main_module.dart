import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/modules/main/main_page.dart';

class MainModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const MainPage()),
  ];
}
