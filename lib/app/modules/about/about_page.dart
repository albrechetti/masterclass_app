import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/app/modules/about/widgets/favorite_tecnologies.dart';
import 'package:masterclass_app/app/modules/about/widgets/profile_card.dart';
import 'package:masterclass_app/app/modules/about/widgets/skills_card.dart';
import 'package:masterclass_app/app/utils/hide_bottom_bar.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({
    Key? key,
  }) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final hideBottomBar = Modular.get<HideBottomBar>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: hideBottomBar.scrollController,
      children: const [
        ProfileCard(),
        FavoriteTecnologies(),
        SkillsCard(),
      ],
    );
  }
}
