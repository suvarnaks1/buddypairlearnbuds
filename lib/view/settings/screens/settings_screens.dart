import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../common/appbarfonts_constants.dart';

class SettingsScreens extends StatelessWidget {
  const SettingsScreens({super.key});

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
                  title: 'Settings',
                  color: ColorConstants.whiteColor,
                  fontSize: 24,
                ),
              ],
            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 35,
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
                  width: double.infinity,
                  height: 100,
                  child: Row(children: [CircleAvatar()],),
                )
              ],
            ),
          ),
        ));
  }
}
