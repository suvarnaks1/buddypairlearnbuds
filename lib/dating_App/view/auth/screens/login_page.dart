import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import 'sign_up_page.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Container(
              height: 400,
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
                child: Column(children: [
                AppbarfontsConstants(title: 'Login', color: ColorConstants.blackColor, fontSize: 20),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email/Mobile',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButtom(
                        boxcolor: Colors.black,
                        title: 'Log In',
                        ontap: () {
                           Navigator.pushNamed(context, '/personalDetails'); 
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppbarfontsConstants(title: 'Forgot Password', color: ColorConstants.blackColor, fontSize: 20),
                      
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          AppbarfontsConstants(title: 'Don\'t have an account? ', color: ColorConstants.fontGrayColor, fontSize: 14),
                       
                          GestureDetector(
                            onTap: () {
                               Navigator.pushNamed(context, '/signup'); 
                            },
                            child: AppbarfontsConstants(title: 'Sign Up', color: ColorConstants.pinkColor, fontSize: 14)
                          ),
                        ],
                      ),
                    ],
                  ))
                ]),
              ),
            ),
          )),
    );
  }
}
