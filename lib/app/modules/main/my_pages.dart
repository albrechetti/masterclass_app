import 'package:flutter/material.dart';
import 'package:masterclass_app/app/modules/about/about_page.dart';
import 'package:masterclass_app/app/modules/activities/activities_page.dart';
import 'package:masterclass_app/app/modules/repository/repository_page.dart';

class MyPages extends StatelessWidget {
  const MyPages({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;
  // final List<Widget> pages = [
  //   const ActivitiesPage(),
  //   const RepositoryPage(),
  //   const AboutPage(),
  // ];
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        ActivitiesPage(),
        RepositoryPage(),
        AboutPage(),
      ],
    );
  }
}
