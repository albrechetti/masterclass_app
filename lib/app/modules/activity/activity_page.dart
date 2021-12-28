import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';
import 'activity_store.dart';

class ActivityPage extends StatefulWidget {
  final String title;
  const ActivityPage({Key? key, this.title = 'ActivityPage'}) : super(key: key);
  @override
  ActivityPageState createState() => ActivityPageState();
}

class ActivityPageState extends ModularState<ActivityPage, ActivityStore> {
  @override
  void initState() {
    super.initState();
    store.title = super.widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          hasLogo: false, title: widget.title, showThemeToggle: true),
      body: store.checkActivity(context),
    );
  }
}
