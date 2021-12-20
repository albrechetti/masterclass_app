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
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(44),
        color: const Color(0xff172026),
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
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xff055AA3),
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
