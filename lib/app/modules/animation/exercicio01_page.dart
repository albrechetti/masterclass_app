import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class Exercicio01Page extends StatefulWidget {
  final String title;
  const Exercicio01Page({Key? key, this.title = 'Exercício 01'})
      : super(key: key);
  @override
  Exercicio01PageState createState() => Exercicio01PageState();
}

class Exercicio01PageState extends State<Exercicio01Page> {
  bool isTaped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(hasLogo: false, title: widget.title, showThemeToggle: false,),
      body: AnimatedAlign(
        duration: const Duration(milliseconds: 500),
        alignment: isTaped ? Alignment.topCenter : Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isTaped = !isTaped;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: isTaped ? 100 : 50,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: isTaped
                    ? BorderRadius.circular(0)
                    : BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
