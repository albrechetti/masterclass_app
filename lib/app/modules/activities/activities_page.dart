import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterclass_app/app/utils/controllers/hide_bottom_bar_controller.dart';

import 'widgets/info_card.dart';

class ActivitiesPage extends StatefulWidget {
  final String title;

  const ActivitiesPage({
    Key? key,
    this.title = "Home",
  }) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  final hideBottomBar = Modular.get<HideBottomBar>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: hideBottomBar.scrollController,
      children: const [
        InfoCard(
          title: 'Animações',
          icon: FontAwesomeIcons.running,
          description:
              'Estudos sobre animações implícitas e controladas, contendo 4 exercícios  e 2 estudos',
          exercises: 4,
        ),
        InfoCard(
          title: 'Leitura de Mockup',
          icon: FontAwesomeIcons.glasses,
          description:
              'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
          exercises: 2,
        ),
        InfoCard(
          title: 'Playground',
          icon: FontAwesomeIcons.gamepad,
          description: 'Ambiente destinado a testes e estudos em geral',
          exercises: 2,
        ),
      ],
    );
  }
}
