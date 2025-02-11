

import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';

class LocationTabMatrimony extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 25,
        childAspectRatio: 3 / 2.5,
      ),
      itemCount: 6, // Number of cards
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Background Image
                Image.asset(
                  'assets/images/download.jpg',
                  fit: BoxFit.cover,
                ),

                // Content overlay
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // "Online" Label
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: AppbarfontsConstants(
                              title: 'Online',
                              color: ColorConstants.whiteColor,
                              fontSize: 12),
                          // Text(
                          //   'Online',
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 12,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      ),

                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.black.withOpacity(0.2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 8,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                AppbarfontsConstants(
                                    title: 'Sithara Nair',
                                    color: ColorConstants.whiteColor,
                                    fontSize: 12),
                                Spacer(),
                                AppbarfontsConstants(
                                    title: 'F, 28 YRS',
                                    color: ColorConstants.whiteColor,
                                    fontSize: 10),
                              ],
                            ),
                            AppbarfontsConstants(
                                title: 'Developer, Hyderabad',
                                color: ColorConstants.whiteColor,
                                fontSize: 10),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Positioned(
                    right: 0,
                    top: 20,
                    child: Container(
                      // height: 50,
                      // width: 20,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 6, top: 6, bottom: 6, right: 3),
                        decoration: BoxDecoration(
                            color: Colors.white38,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 7,
                                spreadRadius: 1,
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topLeft: Radius.circular(12))),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white30,
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white30,
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                            SizedBox(height: 5),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white30,
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}