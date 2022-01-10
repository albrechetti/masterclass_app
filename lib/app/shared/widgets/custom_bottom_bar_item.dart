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
    return SizedBox(
      height: 68,
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
              IconButton(
                splashRadius: 20,
                splashColor: Theme.of(context).primaryColor,
                icon: icon,
                color: Theme.of(context).highlightColor,
                iconSize: 24,
                onPressed: () => navigationController.setPageIndex(indexPage),
              ),
            ],
          ),
          Text(title, style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );
  }
}
