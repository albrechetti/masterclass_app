import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Theme.of(context).shadowColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Theme.of(context).shadowColor,
                backgroundImage: const AssetImage('assets/profile.jpg'),
              ),
            ),
            Text(
              'Luan Albrechetti',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Aenean purus quam, porttitor porta elit nec, mollis vulputate justo. Sed posuere pharetra ex, ac maximus risus venenatis vel. ',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.behance,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.githubAlt,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
