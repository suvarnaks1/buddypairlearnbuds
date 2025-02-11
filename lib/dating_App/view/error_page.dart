
import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: AppbarfontsConstants(
                    title: '404',
                    color: ColorConstants.yellowColor,
                    fontSize: 100)),
            AppbarfontsConstants(
                title: 'OooPs...',
                color: ColorConstants.whiteColor,
                fontSize: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppbarfontsConstants(
                  title: 'We cannot find this page',
                  color: ColorConstants.whiteColor,
                  fontSize: 20),
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
                            title: "Let's try something different",
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