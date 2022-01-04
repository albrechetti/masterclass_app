import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class ValueNotifierStudy1 extends StatefulWidget {
  const ValueNotifierStudy1({Key? key}) : super(key: key);

  @override
  _ValueNotifierStudy1State createState() => _ValueNotifierStudy1State();
}

class _ValueNotifierStudy1State extends State<ValueNotifierStudy1> {
  final _counter = ValueNotifier<int>(0);

  void incrementCounter() {
    _counter.value++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        hasLogo: false,
        title: 'Value Notifier',
      ),
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
