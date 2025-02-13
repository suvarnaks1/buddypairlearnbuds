import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import '../../auth/screens/sign_up_page.dart';

class IntrestedScreen extends StatelessWidget {
  const IntrestedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 210,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Center(
                    child:  AppbarfontsConstants(title: 'Intrested', color: ColorConstants.blackColor, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  CustomButtom(
                    boxcolor: Colors.black,
                    title: 'Dating',
                    ontap: () {
                      Navigator.pushNamed(context, '/aditionalDeatails');
                    },
                  ),
                  SizedBox(height: 20),
                  CustomButtom(
                    boxcolor: Colors.black,
                    title: 'Matrimony',
                    ontap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
