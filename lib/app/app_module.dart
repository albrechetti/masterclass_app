import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/utils/controllers/theme_controller.dart';
import 'package:masterclass_app/app/modules/activity/activity_module.dart';
import 'package:masterclass_app/app/modules/animation/animation_module.dart';
import 'package:masterclass_app/app/modules/layout/layout_module.dart';
import 'package:masterclass_app/app/modules/main/main_module.dart';
import 'package:masterclass_app/app/modules/playground/playground_module.dart';
import 'package:masterclass_app/app/utils/controllers/app_bar_controller.dart';
import 'package:masterclass_app/app/utils/controllers/hide_bottom_bar_controller.dart';
import 'package:masterclass_app/app/utils/controllers/navigation_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ThemeController()),
    Bind((i) => HideBottomBar()),
    Bind((i) => NavigationController()),
    Bind((i) => AppBarController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: MainModule()),
    ModuleRoute('/activity', module: ActivityModule()),
    ModuleRoute('/animation', module: AnimationModule()),
    ModuleRoute('/layout', module: LayoutModule()),
    ModuleRoute('/playground', module: PlaygroundModule()),
  ];
}
