import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/custom_button_tinder.dart';

class TinderLogin extends StatefulWidget {
  const TinderLogin({Key? key}) : super(key: key);

  @override
  State<TinderLogin> createState() => _TinderLoginState();
}

class _TinderLoginState extends State<TinderLogin> {
  Color firstColor = const Color(0xFFfd2c74);
  Color secondColor = const Color(0xFFFF5E63);
  Color thirdColor = const Color(0xFFff5a5f);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFff5a5f), elevation: 0),
      body: Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: const GradientRotation(math.pi / 4),
            colors: [firstColor, thirdColor, secondColor],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.
          children: [
            SizedBox(
              width: 200,
              child: Image.asset('./assets/tinder.png'),
            ),
            const SizedBox(height: 120),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text:
                        'By tapping Create Account or Sign In, you agree to our ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: 'Terms. ',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                    text: 'Terms. Learn how we process your data in our ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: 'Cookies Policy.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const CustomButtonTinder(
                text: 'Sign in with Apple', icon: Icon(FontAwesomeIcons.apple)),
            const SizedBox(height: 10),
            const CustomButtonTinder(
                text: 'Sign in with Facebook',
                icon: Icon(FontAwesomeIcons.facebook)),
            const SizedBox(height: 10),
            const CustomButtonTinder(
                text: 'Sign in with Phone Number',
                icon: Icon(Icons.chat_bubble)),
            const SizedBox(height: 30),
            const Text(
              'Trouble Signing In?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
