import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterclass_app/app/utils/controllers/theme_controller.dart';
import 'package:masterclass_app/app/utils/controllers/app_bar_controller.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.hasLogo,
    this.title,
  }) : super(key: key);
  final bool hasLogo;
  final String? title;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final themeController = Modular.get<ThemeController>();
  final appBarController = Modular.get<AppBarController>();

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
                  icon: Icon(
                    Icons.chevron_left,
                    size: 40,
                    color: Theme.of(context).highlightColor,
                  ),
                ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder(
                valueListenable: appBarController.navigationController,
                builder: (context, value, child) {
                  return Text(
                    widget.title ?? appBarController.title,
                    style: Theme.of(context).textTheme.headline1,
                  );
                },
              ),
              Text(
                'Flutterando Masterclass',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              themeController.toggleTheme();
            },
            icon: themeController.isDarkMode
                ? Icon(
                    FontAwesomeIcons.solidMoon,
                    size: 28,
                    color: Theme.of(context).highlightColor,
                  )
                : Icon(
                    FontAwesomeIcons.solidSun,
                    size: 28,
                    color: Theme.of(context).highlightColor,
                  ),
          )
        ],
      ),
    );
  }
}
