import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Image(image: AssetImage("assets/images/arrow.png")))),
              Text('Matches',
                  style: GoogleFonts.aldrich(
                      fontSize: 24, color: Color(0xFF22172A))),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage("assets/images/sort_logo.jpg")))),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text.rich(TextSpan(
                        text: 'Your Matches ',
                        style: GoogleFonts.aldrich(fontSize: 20),
                        children: [
                          TextSpan(
                              text: '47',
                              style: GoogleFonts.aldrich(
                                  fontSize: 20, color: Color(0xFFDD88CF)))
                        ]))),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (BuildContext context, int index) {
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
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/download.jpg"),
                                      fit: BoxFit.fill)),
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
                                      style: GoogleFonts.aldrich(
                                          color: Colors.white, fontSize: 14)),
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
                                    style: GoogleFonts.aldrich(
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 225, left: 30),
                              child: Text(
                                'James, 20',
                                style: GoogleFonts.aldrich(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 255, left: 50),
                              child: Text(
                                'HANOVER',
                                style: GoogleFonts.aldrich(
                                    fontSize: 14, color: Colors.white54),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ]),
        ));
  }
}
