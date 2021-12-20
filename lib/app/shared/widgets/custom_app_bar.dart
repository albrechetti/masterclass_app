import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.hasLogo, required this.title})
      : super(key: key);
  final bool hasLogo;
  final String title;
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          hasLogo
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
                  icon: const Icon(Icons.chevron_left,
                      size: 40, color: Color(0xFFEDF4F8)),
                ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.headline1),
              Text('Flutterando Masterclass',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}
