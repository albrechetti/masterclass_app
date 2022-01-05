import 'package:mobx/mobx.dart';
part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  @observable
  bool isDarkMode = false;
  @action
  toggleTheme() {
    return isDarkMode = !isDarkMode;
  }
}
