import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Text(title,
        style: GoogleFonts.aldrich(
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          height: 30 / 24,
          color: color,
        ));
  }
}

class TabfontsConstants extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  const TabfontsConstants(
      {Key? key,
      required this.title,
      required this.color,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.abel(
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          height: 30 / 24,
          color: color,
        ));
  }
}

class outfitFontsConstants extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  const outfitFontsConstants(
      {Key? key,
      required this.title,
      required this.color,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.outfit(
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          height: 30 / 24,
          color: color,
        ));
  }
}

class BoldFontsConstants extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  const BoldFontsConstants(
      {Key? key,
      required this.title,
      required this.color,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.outfit(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          height: 30 / 24,
          color: color,
        ));
  }
}

//poppins

class PopinsFontsConstants extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  const PopinsFontsConstants(
      {Key? key,
      required this.title,
      required this.color,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          height: 30 / 24,
          color: color,
        ));
  }
}
