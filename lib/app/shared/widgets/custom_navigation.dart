import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/shared/widgets/custom_bottom_bar.dart';
import 'package:masterclass_app/app/utils/controllers/hide_bottom_bar_controller.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({
    Key? key,
  }) : super(key: key);
  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  final hiding = Modular.get<HideBottomBar>();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: hiding.visible,
      builder: (context, bool value, child) => Wrap(
        children: const [
          CustomBottomBar(),
        ],
      ),
    );
  }
}
