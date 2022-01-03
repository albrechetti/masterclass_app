import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          onPressed: () {} //() => bottomTapped(0),
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
                      onPressed: () {} //() => bottomTapped(0),
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
                      onPressed: () {} //() => bottomTapped(1),
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
