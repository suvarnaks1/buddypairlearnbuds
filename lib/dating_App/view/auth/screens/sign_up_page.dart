import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';

class SignUpPageScreen extends StatelessWidget {
  const SignUpPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Container(
          height: 700,
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
             AppbarfontsConstants(title: 'Sign Up', color: ColorConstants.blackColor, fontSize: 20),
       
              SizedBox(
                height: 10,
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
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
                      labelText: 'Email',
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
                      labelText: 'Mobile',
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
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Conform Password',
                      labelStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      AppbarfontsConstants(
                        title: 'Generate OTP',
                        color: ColorConstants.blackColor,
                        fontSize: 12,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.refresh,
                            size: 15,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check_circle_outline,
                            size: 15,
                          ))
                    ],
                  ),
                  AppbarfontsConstants(
                    color: ColorConstants.blackColor,
                    title: 'OTP',
                    fontSize: 22,
                  )
                ],
              )),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    child: Center(
                        child: AppbarfontsConstants(
                            title: 'We sent a code to Email/Phone',
                            color: ColorConstants.fontGrayColor,
                            fontSize: 16)),
                  )),
              SizedBox(
                height: 10,
              ),
              CustomButtom(
                boxcolor: Colors.black,
                title: 'Register',
                ontap: () {
                  Navigator.pushNamed(context, '/personalDetails');
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomButtom(
                boxcolor: Color(0xFF4B164C),
                title: 'Social Media Login',
                ontap: () {},
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Don’t have an account?'),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/loginup');
                    },
                    child: AppbarfontsConstants(title: 'Sign Up', color: ColorConstants.pinkColor, fontSize: 14)
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    ));
  }
}

class CustomButtom extends StatelessWidget {
  final Color boxcolor;
  final String title;
  final VoidCallback ontap;
  const CustomButtom({
    super.key,
    required this.boxcolor,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: boxcolor),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
