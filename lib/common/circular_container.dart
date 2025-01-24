import 'package:flutter/material.dart';

Widget circularContainer({
  required String imagePath,
  required VoidCallback onPressed,
}) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey), // Adjust color as needed
      borderRadius: BorderRadius.circular(100),
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: Image.asset(imagePath), // Display the provided image
    ),
  );
}

