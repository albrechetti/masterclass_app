import 'dart:async';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';
import 'activity_store.dart';
import 'widgets/activity_list_tile.dart';

class ActivityPage extends StatefulWidget {
  final String title;
  const ActivityPage({Key? key, this.title = 'ActivityPage'}) : super(key: key);
  @override
  ActivityPageState createState() => ActivityPageState();
}

class ActivityPageState extends State<ActivityPage> {
  final ActivityStore store = Modular.get();

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
    return Scaffold(
      appBar: CustomAppBar(
        hasLogo: false,
        title: widget.title,
      ),
      body: widget.title == 'Animações'
          ? ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return ActivityListTile(
                  index: index,
                  title: 'Exercicio ${index + 1}',
                  route: 'exercicio',
                );
              },
            )
          : Padding(
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
            ),
    );
  }
}
