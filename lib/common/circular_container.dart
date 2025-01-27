import 'package:buddypair/common/color_constants.dart';
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

//white circularcondainer

Widget whitecCircularContainer({
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
      icon: Image.asset(imagePath,color: ColorConstants.whiteColor,), // Display the provided image
    ),
  );
}