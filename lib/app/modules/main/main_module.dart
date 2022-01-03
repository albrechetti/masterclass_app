import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/modules/main/main_page.dart';
import 'package:masterclass_app/app/modules/main/main_page_controller.dart';

class MainModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => MainPageController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const MainPage()),
  ];
}
