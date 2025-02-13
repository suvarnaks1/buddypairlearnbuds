import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget QualificationScreen() {
  final List<Map<String, String>> profiles = [
    {
      'image': 'assets/images/download.jpg',
      'match': '100% Match',
      'distance': '1.8 km away',
      'name': 'James, 20',
      'location': 'HANOVER',
    },
    {
      'image': 'assets/images\/ownload.jpg',
      'match': '90% Match',
      'distance': '2 km away',
      'name': 'Eddie, 23',
      'location': 'DORTMUND',
    },
    {
      'image': 'assets/images/download.jpg',
      'match': '100% Match',
      'distance': '1.8 km away',
      'name': 'James, 20',
      'location': 'HANOVER',
    },
    {
      'image': 'assets/images/download.jpg',
      'match': '100% Match',
      'distance': '1.8 km away',
      'name': 'James, 20',
      'location': 'HANOVER',
    },
    {
      'image': 'assets/images/download.jpg',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Brandon, 20',
      'location': 'BERLIN',
    },
  ];

  return Column(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
            itemCount: profiles.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (BuildContext context, int index) {
              var profile = profiles[index];

              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFC4C4C4),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Stack(
                  children: [
                    // Profile Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        profile['image']!,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover, // Ensures proper scaling
                      ),
                    ),

                    // Match Percentage Tag
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 120,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Color(0xFFDD88CF),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            profile['match']!,
                            style: GoogleFonts.aldrich(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),

                    // Name, Distance & Location (Bottom)
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Distance Badge
                          Container(
                            width: 110,
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: const Color(0xE6704d63),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: const Color(0xB39d5a75),
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                profile['distance']!,
                                style: GoogleFonts.aldrich(color: Colors.white),
                              ),
                            ),
                          ),

                          const SizedBox(height: 5),

                          // Name
                          Text(
                            profile['name']!,
                            style: GoogleFonts.aldrich(
                                fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),

                          // Location
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              profile['location']!,
                              style: GoogleFonts.aldrich(
                                  fontSize: 14, color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}
