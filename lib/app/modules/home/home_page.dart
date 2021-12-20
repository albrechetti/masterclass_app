import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';
import 'package:masterclass_app/app/shared/widgets/custom_bottom_app_bar.dart';

import 'home_store.dart';
import 'widgets/info_card.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121517),
      appBar: const CustomAppBar(
        hasLogo: true,
        title: 'Olá, Luan',
      ),
      body: ListView(
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
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
