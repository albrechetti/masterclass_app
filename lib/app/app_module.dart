import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/app_widget_controller.dart';
import 'package:masterclass_app/app/modules/about/about_module.dart';
import 'package:masterclass_app/app/modules/activity/activity_module.dart';
import 'package:masterclass_app/app/modules/animation/animation_module.dart';
import 'package:masterclass_app/app/modules/layout/layout_module.dart';
import 'modules/activities/activities_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AppWidgetController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: ActivitiesModule()),
    ModuleRoute('/activity', module: ActivityModule()),
    ModuleRoute('/animation', module: AnimationModule()),
    ModuleRoute('/layout', module: LayoutModule()),
    ModuleRoute('/about', module: AboutModule()),
   
  ];
}
