import 'package:flutter/material.dart';
import 'package:masterclass_app/app/modules/layout/widgets/auth_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            margin: const EdgeInsets.only(top: 80, bottom: 40),
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset('./assets/flutter.png', fit: BoxFit.cover),
          ),
          SizedBox(
            height: 20,
            child: Text(
              'Welcome to Flutter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          const AuthForm(),
          SizedBox(
            height: 20,
            child: Text(
              'You don\'t have an account? Sing up',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ]),
      ),
    );
  }
}
