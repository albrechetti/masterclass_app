import 'package:flutter_modular/flutter_modular.dart';
import 'activity_page.dart';
import 'activity_store.dart';

class ActivityModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ActivityStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (context, args) => ActivityPage(title: args.data['title'])),
  ];
}
