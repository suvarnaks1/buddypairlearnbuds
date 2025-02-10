import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QualificationScreen extends StatelessWidget {
  final List<Map<String, String>> profiles = [
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
      'distance': '2 km away',
      'name': 'Eddie, 23',
      'location': 'DORTMUND',
    },
    {
      'image': 'assets/images/download.jpg',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Brandon, 20',
      'location': 'BERLIN',
    },
    {
      'image': 'assets/images/download.jpg',
      'match': '90% Match',
      'distance': '3.2 km away',
      'name': 'Alex, 24',
      'location': 'BERLIN',
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                      color: Color(0xFFC4C4C4),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(profile['image']!),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
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
                      Positioned(
                        top: 370,
                        left: 65,
                        child: Column(
                          children: [
                            Container(
                              width: 110,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color(0xE6704d63),
                                border: Border.all(
                                  color: const Color(0xB39d5a75),
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  profile['distance']!,
                                  style: GoogleFonts.aldrich(color: Colors.white),
                                ),
                              ),
                            ),
                            Text(
                              profile['name']!,
                              style: GoogleFonts.aldrich(
                                  fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              profile['location']!,
                              style: GoogleFonts.aldrich(
                                  fontSize: 14, color: Colors.white54),
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
}
