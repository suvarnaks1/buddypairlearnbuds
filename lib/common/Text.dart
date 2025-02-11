import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  // Headings
  TextStyle heading1({Color color = Colors.black}) => GoogleFonts.aldrich(
        fontSize: 28.0,
        fontWeight: FontWeight.normal,
        color: color,
        decoration: TextDecoration.none,
      );

  TextStyle heading2({Color color = Colors.black}) => GoogleFonts.aldrich(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: color,
        decoration: TextDecoration.none,
      );
  // Subheadings

  TextStyle subheading({Color color = Colors.grey}) => GoogleFonts.aldrich(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: color,
        decoration: TextDecoration.none,
      );
  TextStyle subheading2({Color color = Colors.grey}) => GoogleFonts.aldrich(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: color,
        decoration: TextDecoration.none,
      );

  // Body Text
  TextStyle bodyText({Color color = Colors.black}) => GoogleFonts.aldrich(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: color,
        decoration: TextDecoration.none,
      );

  // Small Text
  TextStyle smallText({Color color = Colors.white}) => GoogleFonts.aldrich(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: color,
        decoration: TextDecoration.none,
      );

  // Customizable
  static TextStyle custom({
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) {
    return GoogleFonts.aldrich(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}
