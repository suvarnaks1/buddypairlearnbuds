import 'package:flutter/material.dart';

class AppbarfontsConstants extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  const AppbarfontsConstants(
      {Key? key,
      required this.title,
      required this.color,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'Aldrich',
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        height: 30 / 24,
        color: color,
       
      ),
    );
  }
}
