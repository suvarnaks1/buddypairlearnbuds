

import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:flutter/material.dart';

import '../../common/color_constants.dart';

class AccessDenied extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppbarfontsConstants(
                title: '404',
                color: ColorConstants.yellowColor,
                fontSize: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppbarfontsConstants(
                  title: 'Access Denied',
                  color: ColorConstants.whiteColor,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: Center(
                  child: AppbarfontsConstants(
                      title: "Sorry, You don't have access to this page",
                      color: ColorConstants.whiteColor,
                      fontSize: 20),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                    width: 320,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: ColorConstants.whiteColor, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppbarfontsConstants(
                            title: "Go back to the Previous page",
                            color: ColorConstants.whiteColor,
                            fontSize: 16),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: ColorConstants.whiteColor,
                          ))
                    ])))
          ],
        ),
      ),
    );
  }
}