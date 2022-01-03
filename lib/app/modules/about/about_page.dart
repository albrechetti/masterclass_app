import 'package:flutter/material.dart';
import 'package:masterclass_app/app/modules/about/widgets/favorite_tecnologies.dart';
import 'package:masterclass_app/app/modules/about/widgets/profile_card.dart';
import 'package:masterclass_app/app/modules/about/widgets/skills_card.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ProfileCard(),
          FavoriteTecnologies(),
          SkillsCard(),
        ],
      ),
    );
  }
}
