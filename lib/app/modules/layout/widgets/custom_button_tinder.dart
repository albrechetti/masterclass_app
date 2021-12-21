import 'package:flutter/material.dart';

class CustomButtonTinder extends StatelessWidget {
  const CustomButtonTinder({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, bottom: 4, top: 2),
              child: Align(
                child: icon,
                alignment: Alignment.centerLeft,
              ),
            ),
            Align(
              child: Text(text.toUpperCase()),
              alignment: Alignment.center,
            ),
          ],
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsets.all(14.0),
          primary: Colors.white,
          side: const BorderSide(color: Colors.white, width: 1.5),
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}