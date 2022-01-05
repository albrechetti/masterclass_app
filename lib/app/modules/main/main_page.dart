import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:masterclass_app/app/modules/about/about_page.dart';
import 'package:masterclass_app/app/modules/activities/activities_page.dart';
import 'package:masterclass_app/app/shared/widgets/custom_navigation.dart';
import 'package:masterclass_app/app/modules/repository/repository_page.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';
import 'package:masterclass_app/app/utils/controllers/navigation_controller.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({Key? key, this.title = 'MainPage'}) : super(key: key);
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ModularState<MainPage, NavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(hasLogo: true),
      body: SafeArea(
        child: PageView(
          controller: controller.pageController,
          children: const [
            ActivitiesPage(),
            RepositoryPage(),
            AboutPage(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavigation(),
    );
  }
}
