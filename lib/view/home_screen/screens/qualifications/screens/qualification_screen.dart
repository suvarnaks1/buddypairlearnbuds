import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QualificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 7,
              itemBuilder: (context, index) {
                return MatchCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MatchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFC4C4C4),
            width: 5,
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // image: DecorationImage(
                //     image: AssetImage("assets/images/download.jpg"),
                //     fit: BoxFit.fill)
                    ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 120,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xFFDD88CF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Center(
                child: Text('100% Match',
                    style:
                        GoogleFonts.aldrich(color: Colors.white, fontSize: 14)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 185, left: 30),
            child: Container(
              width: 110,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xE6704d63),
                  border: Border.all(
                      color: Color(0xB39d5a75),
                      style: BorderStyle.solid,
                      width: 2),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  '1.8 km away',
                  style: GoogleFonts.aldrich(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 225, left: 30),
            child: Text(
              'James, 20',
              style: GoogleFonts.aldrich(fontSize: 20, color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 255, left: 50),
            child: Text(
              'HANOVER',
              style: GoogleFonts.aldrich(fontSize: 14, color: Colors.white54),
            ),
          )
        ],
      ),
    );
  }
}
