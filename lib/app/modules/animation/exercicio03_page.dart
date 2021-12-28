import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class Exercicio03Page extends StatefulWidget {
  const Exercicio03Page({Key? key}) : super(key: key);

  @override
  _Exercicio03PageState createState() => _Exercicio03PageState();
}

class _Exercicio03PageState extends State<Exercicio03Page> {
  bool taped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        hasLogo: false,
        title: 'Exercício 3',
        showThemeToggle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Toque no ${taped ? 'circulo' : 'quadrado'} para mudar o estado',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  taped = !taped;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  borderRadius: taped
                      ? BorderRadius.circular(1000)
                      : BorderRadius.circular(0),
                  color: taped ? Colors.red : Colors.blue,
                ),
                width: taped ? 100 : 200,
                height: taped ? 100 : 200,
                curve: Curves.linear,
                duration: const Duration(milliseconds: 300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
