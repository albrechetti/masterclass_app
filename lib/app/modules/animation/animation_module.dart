import 'package:flutter_modular/flutter_modular.dart';

import 'exercicio01_page.dart';
import 'exercicio02_page.dart';

class AnimationModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/exercicio1', child: (_, args) => const Exercicio01Page()),
    ChildRoute('/exercicio2', child: (_, args) => const Exercicio02Page()),
  ];
}
