import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: VerticalDivider(
        width: 1,
        thickness: 1,
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
