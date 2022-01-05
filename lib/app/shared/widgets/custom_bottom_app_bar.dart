import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterclass_app/app/shared/widgets/custom_vertical_divider.dart';
import 'package:masterclass_app/app/utils/controllers/navigation_controller.dart';
import 'custom_bottom_bar_item.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final navigationController = Modular.get<NavigationController>();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navigationController,
      builder: (context, value, child) => BottomAppBar(
        elevation: 0,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomBarItem(
                title: 'Atividades',
                icon: const Icon(FontAwesomeIcons.bullseye),
                indexPage: 0,
                isSelected: navigationController.atActivity,
              ),
              const CustomVerticalDivider(),
              CustomBottomBarItem(
                title: 'Repositório',
                icon: const Icon(FontAwesomeIcons.github),
                indexPage: 1,
                isSelected: navigationController.atRepository,
              ),
              const CustomVerticalDivider(),
              CustomBottomBarItem(
                title: 'Sobre o dev',
                icon: const Icon(FontAwesomeIcons.userAlt),
                isSelected: navigationController.atAbout,
                indexPage: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
