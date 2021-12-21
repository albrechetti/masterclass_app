import 'dart:math';

import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class Exercicio04Page extends StatefulWidget {
  const Exercicio04Page({Key? key}) : super(key: key);

  @override
  _Exercicio04PageState createState() => _Exercicio04PageState();
}

class _Exercicio04PageState extends State<Exercicio04Page> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(0);

  void shapeGenerate() {
    final random = Random();
    setState(() {
      _width = random.nextInt(400).toDouble();
      _height = random.nextInt(400).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(1000).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(hasLogo: false, title: 'Exercício 4'),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        tooltip: 'Click aqui para gerar uma forma aleatória',
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: shapeGenerate,
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
            )
          ],
        ),
      ),
    );
  }
}
