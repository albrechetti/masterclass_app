import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:masterclass_app/app/modules/design_patterns/mvp/presenter/bmi_presenter.dart';
import 'package:masterclass_app/app/modules/design_patterns/mvp/presenter/bmi_presenter_interface.dart';

import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class BmiView extends StatefulWidget {
  const BmiView({Key? key}) : super(key: key);

  @override
  _BmiViewState createState() => _BmiViewState();
}

class _BmiViewState extends State<BmiView> implements IBmiPresenter {
  late final presenter = BmiPresenter(contract: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        hasLogo: false,
        title: 'IMC - Presenter ',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).backgroundColor,
                      ),
                      child: Lottie.asset('./assets/controller_animation.zip',
                          width: 200),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        'Estudo do design pattern \n Presenter',
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(vertical: 32),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          presenter.person
                              .setHeight(double.tryParse(value) ?? 0.0);
                        },
                        decoration: InputDecoration(
                          labelText: 'Altura (cm)',
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        onChanged: (value) {
                          presenter.person
                              .setWeight(double.tryParse(value) ?? 0.0);
                        },
                        decoration: InputDecoration(
                          labelText: 'Peso (kg)',
                          labelStyle: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      const SizedBox(height: 20),
                      MaterialButton(
                        minWidth: double.infinity,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Theme.of(context).primaryColor,
                        onPressed: presenter.calculateBmi,
                        child: Text('Calcular',
                            style: Theme.of(context).textTheme.button),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(
                        presenter.result ??
                            'Click no botão para calcular seu IMC',
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void update() {
    setState(() {});
  }
}
