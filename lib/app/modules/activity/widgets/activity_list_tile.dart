import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ActivityListTile extends StatelessWidget {
  const ActivityListTile(
      {Key? key, required this.index, required this.title, required this.route})
      : super(key: key);
  final int index;
  final String title;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Theme.of(context).backgroundColor,
      ),
      child: GestureDetector(
        onTap: () {
          Modular.to.pushNamed('/animation/${route + (index + 1).toString()}');
        },
        child: ListTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.right,
          ),
          leading: Container(
            alignment: Alignment.center,
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              (index + 1).toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ),
    );
  }
}
