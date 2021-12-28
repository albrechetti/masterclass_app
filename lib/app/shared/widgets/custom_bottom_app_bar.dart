import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  changePages(int index) {
    switch (index) {
      case 0:
        return Pages.activities;
      case 1:
        return Pages.repository;
      default:
        return Pages.about;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 68,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 32,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      IconButton(
                        splashRadius: 20,
                        splashColor: Theme.of(context).primaryColor,
                        icon: const Icon(FontAwesomeIcons.bullseye),
                        color: Theme.of(context).highlightColor,
                        iconSize: 24,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Text('Atividades',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: VerticalDivider(
                width: 1,
                thickness: 1,
                color: Theme.of(context).highlightColor,
              ),
            ),
            SizedBox(
              height: 68,
              child: Column(
                children: [
                  IconButton(
                    splashRadius: 22,
                    splashColor: Theme.of(context).primaryColor,
                    icon: const Icon(FontAwesomeIcons.github),
                    color: Theme.of(context).highlightColor,
                    iconSize: 24,
                    onPressed: () {},
                  ),
                  Text('Repositório',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: VerticalDivider(
                width: 1,
                thickness: 1,
                color: Theme.of(context).highlightColor,
              ),
            ),
            SizedBox(
              height: 68,
              child: Column(
                children: [
                  IconButton(
                    splashRadius: 22,
                    splashColor: Theme.of(context).primaryColor,
                    icon: const Icon(FontAwesomeIcons.userAlt),
                    color: Theme.of(context).highlightColor,
                    iconSize: 24,
                    onPressed: () {
                      Modular.to.pushNamed('/about');
                    },
                  ),
                  Text('Sobre o dev',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Pages {
  activities,
  about,
  repository,
}
