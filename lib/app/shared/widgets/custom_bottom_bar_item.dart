import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/utils/controllers/navigation_controller.dart';

class CustomBottomBarItem extends StatelessWidget {
  CustomBottomBarItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.indexPage,
    required this.isSelected,
  }) : super(key: key);
  final String title;
  final Icon icon;
  final int indexPage;
  final bool isSelected;
  final navigationController = Modular.get<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigationController.setPageIndex(indexPage),
      child: SizedBox(
        height: 68,
        width: MediaQuery.of(context).size.width / 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 32,
                  width: 64,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Theme.of(context).backgroundColor
                        : Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Icon(
                  icon.icon,
                  color: isSelected
                      ? Theme.of(context).highlightColor
                      : Theme.of(context).disabledColor,
                  size: 24,
                ),
              ],
            ),
            Text(title, style: Theme.of(context).textTheme.bodyText1)
          ],
        ),
      ),
    );
  }
}
