import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/modules/layout/auth_page.dart';

import 'package:masterclass_app/app/modules/layout/tinder_login.dart';

class LayoutModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/exercicio1', child: (_, args) => const AuthPage()),
    ChildRoute('/exercicio2', child: (_, args) => const TinderLogin()),
  ];
}
