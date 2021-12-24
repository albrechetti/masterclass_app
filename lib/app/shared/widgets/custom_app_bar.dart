import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterclass_app/app/app_widget_controller.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {Key? key,
      required this.hasLogo,
      required this.title,
      required this.showThemeToggle})
      : super(key: key);
  final bool hasLogo;
  final String title;
  final bool showThemeToggle;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _CustomAppBarState
    extends ModularState<CustomAppBar, AppWidgetController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          widget.hasLogo
              ? Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: SizedBox(
                    width: 40,
                    child: Image.asset('./assets/logo.png'),
                  ),
                )
              : IconButton(
                  onPressed: () {
                    Modular.to.pop();
                  },
                  icon: Icon(Icons.chevron_left,
                      size: 40, color: Theme.of(context).highlightColor),
                ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: Theme.of(context).textTheme.headline1),
              Text('Flutterando Masterclass',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
          const Spacer(),
          widget.showThemeToggle
              ? IconButton(
                  onPressed: () {
                    controller.toggleTheme();
                  },
                  icon: controller.isDarkMode
                      ? Icon(FontAwesomeIcons.solidMoon,
                          size: 28, color: Theme.of(context).highlightColor)
                      : Icon(FontAwesomeIcons.solidSun,
                          size: 28, color: Theme.of(context).highlightColor),
                )
              : Container(),
        ],
      ),
    );
  }
}
