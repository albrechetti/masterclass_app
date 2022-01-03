import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class ValueNotifierStudy extends StatefulWidget {
  const ValueNotifierStudy({Key? key}) : super(key: key);

  @override
  _ValueNotifierStudyState createState() => _ValueNotifierStudyState();
}

class _ValueNotifierStudyState extends State<ValueNotifierStudy> {
  final _counter = ValueNotifier<int>(0);

  void incrementCounter() {
    _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          hasLogo: false, title: 'Value Notifier', showThemeToggle: true),
      body: Center(
          child: ValueListenableBuilder(
        builder: (context, value, child) {
          return Text(
            '$value',
            style: Theme.of(context).textTheme.headline1,
          );
        },
        valueListenable: _counter,
      )),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: incrementCounter,
        label: const Text('Increment'),
        icon: const Icon(Icons.add),
        //child: const Icon(Icons.add),
      ),
    );
  }
}
