import 'package:flutter_modular/flutter_modular.dart';

import 'activities_page.dart';

class ActivitiesModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ActivitiesPage()),
  ];
}
