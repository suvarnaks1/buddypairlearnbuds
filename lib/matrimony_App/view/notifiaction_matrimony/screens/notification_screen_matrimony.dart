import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';

class NotificationScreenMatrimony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(54.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Image(image: AssetImage('assets/images/belll.png')),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xFF4B164C),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: outfitFontsConstants(
                              title: 'NEWS',
                              color: Color(0xff237FD2),
                              fontSize: 16),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/x.png'),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: outfitFontsConstants(
                              title: 'News Title',
                              color: Color(0xFFFDF7FD),
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis vitae ultrices in sed. Feugiat metus amet, id sed volutpat enim sed. Cras vel vitae.',
                        style:
                            TextStyle(color: Color(0xffBBC9EC), fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Today 10:30PM',
                            style: TextStyle(
                                color: Color(0xffBBC9EC), fontSize: 12),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ]),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF4B164C)),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            "assets/images/checkbutton.png",
                            height: 14.85,
                            width: 13.37,
                          )),
                      SizedBox(
                        height: 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outfitFontsConstants(
                                title: 'Successfully Message',
                                color: Color(0xFFFDF7FD),
                                fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outfitFontsConstants(
                                title: 'Today 10:30PM',
                                color: Color(0xffBBC9EC),
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/x.png'),
                      ),
                    ],
                  ),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF4B164C)),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/images/warning.png',
                            height: 14.85,
                            width: 13.37,
                          )),
                      SizedBox(
                        height: 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outfitFontsConstants(
                                title: 'Alert Message',
                                color: Color(0xFFFDF7FD),
                                fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outfitFontsConstants(
                                title: 'Today 10:30PM',
                                color: Color(0xffBBC9EC),
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/x.png'),
                      ),
                    ],
                  ),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF4B164C)),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child:Image.asset('assets/images/cross.png',height: 14.85,width: 13.37,)
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outfitFontsConstants(
                                title: 'Error Message',
                                color: Color(0xFFFDF7FD),
                                fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outfitFontsConstants(
                                title: 'Today 10:30PM',
                                color: Color(0xffBBC9EC),
                                fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/x.png'),
                      ),
                    ],
                  ),
                ])),
          ),
        ],
      ),
    );
  }
}
