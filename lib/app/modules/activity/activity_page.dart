import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121517),
      appBar: CustomAppBar(
        hasLogo: false,
        title: widget.title,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ActivityListTile(
            index: index,
            title: 'Exercicio ${index + 1}', route: 'exercicio',
          );
        },
      ),
    );
  }
}
