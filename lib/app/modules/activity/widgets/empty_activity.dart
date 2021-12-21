import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyActivity extends StatefulWidget {
  const EmptyActivity({Key? key}) : super(key: key);

  @override
  _EmptyActivityState createState() => _EmptyActivityState();
}

class _EmptyActivityState extends State<EmptyActivity> {
  double opacity = 0.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: SizedBox(
        height: 400,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Lottie.asset('./assets/notfound.zip'),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 1500),
              opacity: opacity,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  'Ops... ainda não foi implementado',
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
