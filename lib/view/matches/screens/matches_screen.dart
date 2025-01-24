import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/circular_container.dart';

class MatchesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              circularContainer(
                imagePath: "assets/images/arrow.png",
                onPressed: () {},
              ),
              AppbarfontsConstants(
                  title: 'Matches',
                  color: ColorConstants.blackColor,
                  fontSize: 24),
              circularContainer(
                imagePath: "assets/images/sort_logo.jpg",
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5,),
                _buildIconButton(
                 imagePath: 'assets/images/love.png',
                  text: 'Likes',
                  count: '32',
                  iconBackgroundColor: Color(0xFFDD88CF), 
                ),
                const SizedBox(width: 20),
                _buildIconButton(
                 imagePath: 'assets/images/comment.png',
                  text: 'Connect',
                  count: '15',
                  iconBackgroundColor: Color(0xFFDD88CF), 
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                AppbarfontsConstants(
                    title: 'Your Matches',
                    color: ColorConstants.primaryColor,
                    fontSize: 20),
                SizedBox(
                  width: 5,
                ),
                AppbarfontsConstants(
                    title: '47', color: ColorConstants.pinkColor, fontSize: 20)
              ],
            ),
            SizedBox(height: 10,),
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
                              color: ColorConstants.pinkColor,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(24)),
                        child: Stack(
                          children: [
                            Container(
                              width: double.maxFinite,
                              height: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
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
                                    child: AppbarfontsConstants(
                                        title: "100%  Match",
                                        color: ColorConstants.whiteColor,
                                        fontSize: 12)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 185, left: 30),
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: Center(
                                    child: AppbarfontsConstants(
                                        title: '1.3 km away',
                                        color: ColorConstants.whiteColor,
                                        fontSize: 11)),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 225, left: 30),
                                child: Row(
                                  children: [
                                    AppbarfontsConstants(
                                        title: 'James',
                                        color: ColorConstants.whiteColor,
                                        fontSize: 18),
                                         AppbarfontsConstants(
                                        title: '16',
                                        color: ColorConstants.whiteColor,
                                        fontSize: 18),
                                  ],
                                )
                              
                                ),
                            Padding(
                              padding: EdgeInsets.only(top: 255, left: 40),
                              child:  AppbarfontsConstants(
                                        title: 'Hanover',
                                        color: ColorConstants.whiteColor,
                                        fontSize: 11),
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
   Widget _buildIconButton({
    required String imagePath,
    required String text,
    required String count, 
    required Color iconBackgroundColor,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: Color(0xFFDD88CF),
            ),
            CircleAvatar(
              radius: 31,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xFFC4C4C4),
               child: Image.asset(
              imagePath ,
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$text ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextSpan(
                text: count,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFDD88CF),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
