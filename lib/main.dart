import 'package:buddypair/dating_App/view/details/screens/filterscreen.dart';
import 'package:buddypair/dating_App/view/matches/screens/matches_view_screen.dart';
import 'package:buddypair/dating_App/view/requests/screens/sent_screen.dart';
import 'package:buddypair/dating_App/view/discover/screens/discover_screen.dart';
import 'package:buddypair/dating_App/view/home_screen/screens/home_screen.dart';
import 'package:buddypair/dating_App/view/details/screens/intrested_screen.dart';
import 'package:buddypair/dating_App/view/details/screens/job_details.dart';
import 'package:buddypair/dating_App/view/details/screens/job_status.dart';
import 'package:buddypair/dating_App/view/location_screen.dart';
import 'package:buddypair/dating_App/view/auth/screens/login_page.dart';
import 'package:buddypair/dating_App/view/details/screens/personal_details.dart';
import 'package:buddypair/dating_App/view/details/screens/relationship_goals_screen.dart';
import 'package:buddypair/dating_App/view/details/screens/seeker_job_details.dart';
import 'package:flutter/material.dart';
import 'dating_App/view/splash/screens/splash_screen.dart';
import 'dating_App/view/bottomNavigation_bar_screen.dart';
import 'dating_App/view/auth/screens/sign_up_page.dart';
import 'matrimony_App/view/additional_details_matrimony.dart';
import 'matrimony_App/view/bottom_nav_Matrimony.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen (),
        '/buttomNavigation':(context)=>  BottomNavBarExample(),
        '/signup': (context) => SignUpPageScreen(),
        '/loginup': (context) => LoginPageScreen(),
        '/jobdetails': (context) => JobDetailsScreen(),
        '/personalDetails': (context) => PersonalDetailsScreen(),
        '/jobStatus': (context) => JobStatusScreen(),
        '/seekerJobDetails': (context) => SeekerJobDetailsScreen(),
        '/relationShipGoalsScreen': (context) => RelationshipGoalsScreen(),
        '/intrestedScreen': (context) => IntrestedScreen(),
        '/homeScreen':(context)=>HomeScreen(),
        '/locationScreen':(context)=>LocationScreen(), 
        '/matchesViewScreen':(context)=>MatchProfile(),
        '/discoverScreen':(context)=>DiscoverScreen(),
        '/sentScreen':(context)=>SentScreen(),
        '/filterScreen':(context)=>FilterScreen(),
        //matrimony app
        '/matrimonyAdditionDetails':(context)=>MatrimonyAdditionaldetails(),
        '/matrimonyBottomNav':(context)=>BottomNavMatrimony()
      },
    );
  }
}
