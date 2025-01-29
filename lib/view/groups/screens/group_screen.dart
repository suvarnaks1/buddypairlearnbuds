import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:flutter/material.dart';

import '../../../common/color_constants.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarfontsConstants(
                title: 'Buddy pair',
                color: ColorConstants.whiteColor,
                fontSize: 24),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/backbutton.png',
              color: ColorConstants.whiteColor,
            ),
          ],
        ),
      ),
      body: Container(
        height: 677,
        width: double.infinity,
        decoration: BoxDecoration(
            color: ColorConstants.whiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ColorConstants.pinkColor,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/images/search.png',color: ColorConstants.whiteColor,)),
                  SizedBox(width: 55),
                  AppbarfontsConstants(
                      title: 'Groups',
                      color: ColorConstants.blackColor,
                      fontSize: 20),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              // Group List
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 110,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage:
                                      AssetImage('assets/images/download.jpg'),
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                AppbarfontsConstants(
                                    title: 'Team SAS',
                                    color: ColorConstants.blackColor,
                                    fontSize: 18),
                                SizedBox(
                                  width: 30,
                                ),
                                Image.asset('assets/images/chat.png'),
                                Image.asset('assets/images/phone_logo.png'),
                                Image.asset('assets/images/vidioIcon.png'),
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
