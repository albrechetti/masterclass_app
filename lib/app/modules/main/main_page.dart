import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:masterclass_app/app/modules/main/main_page_controller.dart';
import 'package:masterclass_app/app/modules/main/my_pages.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({Key? key, this.title = 'MainPage'}) : super(key: key);
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ModularState<MainPage, MainPageController> {
  int selectedIndex = 0;
  String pageTitle = 'Atividades';
  ScrollController scrollController = ScrollController();
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  void changePageAndTitle(int index) {
    setState(() {
      selectedIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
      switch (index) {
        case 0:
          pageTitle = 'Atividades';
          break;
        case 1:
          pageTitle = 'Repositório';
          break;
        case 2:
          pageTitle = 'Sobre';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(hasLogo: true, title: pageTitle, showThemeToggle: true),
      body: MyPages(
        pageController: pageController,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        selectedIndex == 0
                            ? Container(
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )
                            : Container(),
                        IconButton(
                          splashRadius: 20,
                          splashColor: Theme.of(context).primaryColor,
                          icon: const Icon(FontAwesomeIcons.bullseye),
                          color: Theme.of(context).highlightColor,
                          iconSize: 24,
                          onPressed: () => changePageAndTitle(0),
                        ),
                      ],
                    ),
                    Text('Atividades',
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Theme.of(context).highlightColor,
                ),
              ),
              SizedBox(
                height: 68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        selectedIndex == 1
                            ? Container(
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )
                            : Container(),
                        IconButton(
                          splashRadius: 20,
                          splashColor: Theme.of(context).primaryColor,
                          icon: const Icon(FontAwesomeIcons.github),
                          color: Theme.of(context).highlightColor,
                          iconSize: 24,
                          onPressed: () => changePageAndTitle(1),
                        ),
                      ],
                    ),
                    Text('Repositório',
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Theme.of(context).highlightColor,
                ),
              ),
              SizedBox(
                height: 68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        selectedIndex == 2
                            ? Container(
                                height: 32,
                                width: 64,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).backgroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              )
                            : Container(),
                        IconButton(
                          splashRadius: 20,
                          splashColor: Theme.of(context).primaryColor,
                          icon: const Icon(FontAwesomeIcons.userAlt),
                          color: Theme.of(context).highlightColor,
                          iconSize: 24,
                          onPressed: () => changePageAndTitle(2),
                        ),
                      ],
                    ),
                    Text('Sobre o dev',
                        style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
