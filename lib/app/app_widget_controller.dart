import 'package:mobx/mobx.dart';
part 'app_widget_controller.g.dart';

class AppWidgetController = _AppWidgetControllerBase with _$AppWidgetController;

abstract class _AppWidgetControllerBase with Store {
  @observable
  bool isDarkMode = false;
  @action
  toggleTheme() {
    // ignore: avoid_print
    print('####### IS DARK MODE: $isDarkMode #######');
    return isDarkMode = !isDarkMode;
  }
}
