import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/custom_app_bar.dart';

class Exercicio02Page extends StatefulWidget {
  const Exercicio02Page({Key? key}) : super(key: key);
  final String title = 'Exercício 02';

  @override
  _Exercicio02PageState createState() => _Exercicio02PageState();
}

class _Exercicio02PageState extends State<Exercicio02Page> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        hasLogo: false,
        title: widget.title,
        showThemeToggle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            bool isExpand = false;
            if (index == selectedItem) {
              isExpand = true;
            }
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (selectedItem == index) {
                      selectedItem = -1;
                    } else {
                      selectedItem = index;
                    }
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Expasion tile $index',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          AnimatedRotation(
                            duration: const Duration(milliseconds: 500),
                            turns: isExpand ? 0.5 : 0,
                            child: Icon(
                              Icons.expand_more,
                              color: Theme.of(context).highlightColor,
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: AnimatedAlign(
                          duration: const Duration(milliseconds: 500),
                          alignment: Alignment.center,
                          heightFactor: isExpand ? 1.5 : 0,
                          child: Column(
                            children: const [
                              FlutterLogo(
                                size: 60,
                              ),
                              SizedBox(height: 10),
                              Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sollicitudin, magna non varius pharetra, est lectus imperdiet tellus, eu rutrum ante mauris at urna.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
