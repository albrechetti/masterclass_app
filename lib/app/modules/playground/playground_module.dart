import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/modules/playground/value_notifier_study.dart';

class PlaygroundModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/exercicio1', child: (_, args) => const ValueNotifierStudy()),
  ];
}
