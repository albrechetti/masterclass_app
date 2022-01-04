import 'package:flutter_modular/flutter_modular.dart';

class AboutModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    //ChildRoute('/', child: (_, args) => const AboutPage()),
  ];
}
