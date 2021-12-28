import 'package:flutter/material.dart';

class SkillsCard extends StatefulWidget {
  const SkillsCard({Key? key}) : super(key: key);

  @override
  _SkillsCardState createState() => _SkillsCardState();
}

class _SkillsCardState extends State<SkillsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Habilidades e Competências',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 8),
          Container(
            //height: 200,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).backgroundColor,
            ),
            child: Column(
              children: const [
                SkillTitleWithBarIndicator(
                  skillValue: 200,
                  title: 'UI/UX Design',
                ),
                SkillTitleWithBarIndicator(
                  skillValue: 180,
                  title: 'Dart/Flutter',
                ),
                SkillTitleWithBarIndicator(
                  skillValue: 200,
                  title: 'HTML/CSS',
                ),
                SkillTitleWithBarIndicator(
                  skillValue: 160,
                  title: 'Javascript',
                ),
                SkillTitleWithBarIndicator(
                  skillValue: 120,
                  title: 'React',
                ),
                SkillTitleWithBarIndicator(
                  skillValue: 100,
                  title: 'Unity 3D',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillTitleWithBarIndicator extends StatefulWidget {
  const SkillTitleWithBarIndicator(
      {Key? key, required this.title, required this.skillValue})
      : super(key: key);

  final String title;
  final double skillValue;

  @override
  _SkillTitleWithBarIndicatorState createState() =>
      _SkillTitleWithBarIndicatorState();
}

class _SkillTitleWithBarIndicatorState
    extends State<SkillTitleWithBarIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Stack(
            children: [
              Container(
                height: 8,
                decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor),
                width: 250,
              ),
              Container(
                height: 8,
                color: Theme.of(context).primaryColor,
                //duration: const Duration(milliseconds: 300),
                width: widget.skillValue,
              ),
            ],
          )
        ],
      ),
    );
  }
}
