import 'package:flutter/material.dart';

import '../../../common/appbarfonts_constants.dart';
import '../../../common/color_constants.dart';

class ShortlistScreen extends StatelessWidget {
  const ShortlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130,
        backgroundColor: ColorConstants.primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorConstants.pinkColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/search.png',
                    color: ColorConstants.whiteColor,
                  )),
              SizedBox(
                width: 55,
              ),
              AppbarfontsConstants(
                title: 'Shortlist',
                color: ColorConstants.whiteColor,
                fontSize: 24,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // height: 5000,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage(
                        "assets/images/Rectangle 1131.png",
                      ))),
                ),
                AppbarfontsConstants(
                    title: 'A', color: ColorConstants.blackColor, fontSize: 16),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile pic 3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarfontsConstants(
                            title: 'Afrin Sabila',
                            color: ColorConstants.blackColor,
                            fontSize: 18),
                        AppbarfontsConstants(
                            title: 'Life is beautiful 👌',
                            color: ColorConstants.fontGrayColor,
                            fontSize: 12),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(
                            image: AssetImage(
                          'assets/images/X.png',
                        ))),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile pic 3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarfontsConstants(
                            title: 'Adil Adnan',
                            color: ColorConstants.blackColor,
                            fontSize: 18),
                        AppbarfontsConstants(
                            title: 'Be your own hero 💪',
                            color: ColorConstants.fontGrayColor,
                            fontSize: 12),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(image: AssetImage('assets/images/X.png'))),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                AppbarfontsConstants(
                    title: 'B', color: ColorConstants.blackColor, fontSize: 16),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile pic 3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarfontsConstants(
                            title: 'Bristy Haque',
                            color: ColorConstants.blackColor,
                            fontSize: 18),
                        AppbarfontsConstants(
                            title: 'Be your own hero 💪',
                            color: ColorConstants.fontGrayColor,
                            fontSize: 12),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(image: AssetImage('assets/images/X.png'))),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/profile pic 3.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppbarfontsConstants(
                              title: 'Bristy Haque',
                              color: ColorConstants.blackColor,
                              fontSize: 18),
                          AppbarfontsConstants(
                              title: 'Be your own hero 💪',
                              color: ColorConstants.fontGrayColor,
                              fontSize: 12),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon:
                              Image(image: AssetImage('assets/images/X.png'))),
                    ]),
                SizedBox(
                  height: 10,
                ),
//.........................................
                AppbarfontsConstants(
                    title: 'S', color: ColorConstants.blackColor, fontSize: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile pic 3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarfontsConstants(
                            title: 'sheik Sadi ',
                            color: ColorConstants.blackColor,
                            fontSize: 18),
                        AppbarfontsConstants(
                            title: 'Be your own hero 💪',
                            color: ColorConstants.fontGrayColor,
                            fontSize: 12),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(image: AssetImage('assets/images/X.png'))),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile pic 3.png'),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarfontsConstants(
                            title: 'sheik Sadi ',
                            color: ColorConstants.blackColor,
                            fontSize: 18),
                        AppbarfontsConstants(
                            title: 'Be your own hero 💪',
                            color: ColorConstants.fontGrayColor,
                            fontSize: 12),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image(image: AssetImage('assets/images/X.png')))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
