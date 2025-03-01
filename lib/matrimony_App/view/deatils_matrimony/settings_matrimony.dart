import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';

class SettingsMatrimony extends StatefulWidget {
  SettingsMatrimony({super.key});

  @override
  State<SettingsMatrimony> createState() => _SettingsScreensState();
}

class _SettingsScreensState extends State<SettingsMatrimony> {
bool isTwoFAEnabled = true;

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
                  width: 75,
                ),
                AppbarfontsConstants(
                  title: 'Settings',
                  color: ColorConstants.whiteColor,
                  fontSize: 24,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 677,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                            image: AssetImage(
                          "assets/images/Rectangle 1131.png",
                        ))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage('assets/images/download.jpg'),
                        backgroundColor: Color(0xFFF2F8F7),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldFontsConstants(
                            title: 'Nazrul Islam',
                            color: ColorConstants.blackColor,
                            fontSize: 20,
                          ),
                          outfitFontsConstants(
                            title: 'Never give up 💪',
                            color: Color(0xFF797C7B),
                            fontSize: 12,
                          )
                        ],
                      ),
                      Image.asset('assets/images/Qr code.png')
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF2F8F7),
                            ),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.key,color: Color(0xFF797C7B),))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BoldFontsConstants(
                                title: 'Account',
                                color: ColorConstants.blackColor,
                                fontSize: 16),
                            outfitFontsConstants(
                              title: 'Privacy, security, change number',
                              color: Color(0xFF797C7B),
                              fontSize: 12,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF2F8F7),
                            ),
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.chat,color: Color(0xFF797C7B),))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BoldFontsConstants(
                                title: 'Chat',
                                color: ColorConstants.blackColor,
                                fontSize: 16),
                            outfitFontsConstants(
                              title: 'Chat history,theme,wallpapers',
                              color: Color(0xFF797C7B),
                              fontSize: 12,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF2F8F7),
                          ),
                          child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.notifications_active,color: Color(0xFF797C7B),))),
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BoldFontsConstants(
                                title: 'Notifications',
                                color: ColorConstants.blackColor,
                                fontSize: 16),
                            outfitFontsConstants(
                              title: 'Messages, group and others',
                              color: Color(0xFF797C7B),
                              fontSize: 12,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF2F8F7),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.help,
                                  color: Color(0xFF797C7B),
                                ))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BoldFontsConstants(
                                title: 'Help',
                                color: ColorConstants.blackColor,
                                fontSize: 16),
                            outfitFontsConstants(
                              title: 'Help center,contact us, privacy policy',
                              color: Color(0xFF797C7B),
                              fontSize: 12,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFF2F8F7),
                            ),
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.storage,  color: Color(0xFF797C7B),)),
                          
                            ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BoldFontsConstants(
                                title: 'Storage and data',
                                color: ColorConstants.blackColor,
                                fontSize: 16),
                            outfitFontsConstants(
                              title: 'Network usage, stogare usage',
                              color: Color(0xFF797C7B),
                              fontSize: 12,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF2F8F7),
                          ),
                          child: 
                          Image.asset(
                            'assets/images/Users.png',
                            color: Color(0xFF797C7B),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            BoldFontsConstants(
                                title: 'Invite a friend',
                                color: ColorConstants.blackColor,
                                fontSize: 16),
                          ],
                        )
                      ],
                    ),
                  ),
                    SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: Row(
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF2F8F7),
                          ),
                          child: 
                          Image.asset(
                            'assets/images/Users.png',
                            color: Color(0xFF797C7B),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        BoldFontsConstants(
                            title: 'Are You Interested to Show \n Your Profile On Similar Job',
                            color: ColorConstants.blackColor,
                            fontSize: 16),
                            Spacer(),
                                     Switch(
                                    value: isTwoFAEnabled,
                                    onChanged: (value) {
                                      setState(() {
                                        isTwoFAEnabled = value;
                                      });
                                    },
                                    activeColor: ColorConstants.whiteColor,
                                    inactiveThumbColor: ColorConstants.whiteColor,
                                    inactiveTrackColor: ColorConstants.primaryColor,
                                    activeTrackColor: ColorConstants.primaryColor,
                                  )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
