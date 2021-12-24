import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/modules/themes/dartk_theme.dart';
import 'package:masterclass_app/app/modules/themes/light_theme.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'app_widget_controller.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppWidgetController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (context) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutterando Masterclass',
              theme: lightTheme,
              themeMode:
                  controller.isDarkMode ? ThemeMode.dark : ThemeMode.light,
              darkTheme: darkTheme,
            ).modular());
  }
}
