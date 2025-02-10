
import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen  extends StatelessWidget {
  const SplashScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       
          const SizedBox(height: 400),
      
          // Text
          AppbarfontsConstants(color:ColorConstants.blackColor , title: "Let's meet new\npeople around you", fontSize: 28,),
         
          const SizedBox(height: 20),
      
          // Buttons
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                     Navigator.pushNamed(context, '/loginup'); 
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0XFF4b164c),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                          child: Icon(Icons.phone),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Login with Email/Phone',
                          style: GoogleFonts.aldrich(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(257, 235, 126, 162)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 12, // Reduced the radius of the CircleAvatar
                            backgroundImage:
                                const AssetImage('assets/images/google_logo.png'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Login with Google',
                          style: GoogleFonts.aldrich(
                            color: const Color(0XFF4b164c),
                            fontSize: 16,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Don't have an account?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aldrich(
                          color: const Color.fromARGB(179, 19, 18, 18),
                          fontSize: 14,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                   Navigator.pushNamed(context, '/signup'); 
                      },
                      child: Text(
                        " Sign Up",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aldrich(
                          color: const Color(0XFFDD88CF),
                          fontSize: 14,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
