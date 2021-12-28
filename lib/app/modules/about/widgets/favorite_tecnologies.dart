import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteTecnologies extends StatelessWidget {
  const FavoriteTecnologies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Tecnlogias favoritas',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 12,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 80,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).backgroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      FontAwesomeIcons.react,
                      size: 40,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('React'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
