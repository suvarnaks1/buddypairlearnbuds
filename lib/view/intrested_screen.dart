import 'package:flutter/material.dart';

import 'auth/screens/sign_up_page.dart';

class IntrestedScreen extends StatelessWidget {
  const IntrestedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Center(
          child: Container(
            height: 250,
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
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height:20
                    ),
                    Center(
                      child: Text(
                        'Intrested',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomButtom(
                      boxcolor: Colors.black,
                      title: 'Next',
                      ontap: () {
                           Navigator.pushNamed(context, '/buttomNavigation'); 
                      },
                    ),
                    SizedBox(height: 20),
                    CustomButtom(
                      boxcolor: Colors.black,
                      title: 'Next',
                      ontap: () {
                          // Navigator.pushNamed(context, '/jobStatus'); 
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
