import 'package:flutter/material.dart';

class MatchesViewScreen extends StatelessWidget {
  const MatchesViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Image.png'), // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Right Side Tab
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                print("Tab pressed!"); // Add your logic here
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8.0),
                width: 50,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8), // Background color with opacity
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 1, // Rotate the text vertically
                    child: Text(
                      "2.5 km",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
