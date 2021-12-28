import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int exercises;
  final String description;

  const InfoCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.exercises,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        elevation: 0,
        color: Theme.of(context).backgroundColor,
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
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Icon(
                            icon,
                            color: Theme.of(context).shadowColor,
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
                          Icon(
                            FontAwesomeIcons.github,
                            color: Theme.of(context).highlightColor,
                          ),
                          const SizedBox(width: 8),
                          Text('Acessar código fonte',
                              style: Theme.of(context).textTheme.bodyText1),
                        ],
                      ),
                      MaterialButton(
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          onPressed: () {
                            Modular.to.pushNamed('/activity/',
                                arguments: {'title': title});
                          },
                          child: Text(
                            'Ver mais',
                            style: Theme.of(context).textTheme.button,
                          )),
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
