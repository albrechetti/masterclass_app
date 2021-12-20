import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_store.dart';

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
      appBar: const CustomAppBar(),
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 40,
            child: Image.asset('./assets/logo.png'),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Olá, Luan', style: Theme.of(context).textTheme.headline1),
              Text('Flutterando Masterclass',
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: const Color(0xff121517),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 68,
            child: Column(
              children: [
                IconButton(
                  splashRadius: 22,
                  splashColor: const Color(0xff055AA3),
                  icon: const Icon(FontAwesomeIcons.bullseye),
                  color: const Color(0xFFEDF4F8),
                  iconSize: 32,
                  onPressed: () {},
                ),
                Text('Atividades', style: Theme.of(context).textTheme.bodyText1)
              ],
            ),
          ),
          Container(
            width: 1,
            height: 32,
            color: const Color(0xff51565A),
          ),
          SizedBox(
            height: 68,
            child: Column(
              children: [
                IconButton(
                  splashRadius: 22,
                  splashColor: const Color(0xff055AA3),
                  icon: const Icon(FontAwesomeIcons.github),
                  color: const Color(0xFFEDF4F8),
                  iconSize: 32,
                  onPressed: () {},
                ),
                Text('Repositório',
                    style: Theme.of(context).textTheme.bodyText1)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int exercises;
  final String description;

  const InfoCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.exercises,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        elevation: 0,
        color: const Color(0xff172026),
        child: SizedBox(
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: const Color(0xff055AA3),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Icon(
                            icon,
                            color: const Color(0xff121517),
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(title,
                            style: Theme.of(context).textTheme.headline2),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Exercicios:',
                            style: Theme.of(context).textTheme.bodyText2),
                        const SizedBox(width: 4),
                        Text(exercises.toString(),
                            style: Theme.of(context).textTheme.headline2),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(description,
                      style: Theme.of(context).textTheme.headline2),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.github,
                            color: Color(0xFFEDF4F8),
                          ),
                          const SizedBox(width: 8),
                          Text('Acessar código fonte',
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      MaterialButton(
                          color: const Color(0xff055AA3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          onPressed: () {},
                          child: Text('Ver mais',
                              style: Theme.of(context).textTheme.bodyText1)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
