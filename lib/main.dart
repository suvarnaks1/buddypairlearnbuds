import 'package:buddypair/view/matches/screens/matches_view_screen.dart';
import 'package:buddypair/view/requests/screens/sent_screen.dart';
import 'package:buddypair/view/splash/screens/splash_screen.dart';
import 'package:buddypair/view/discover/screens/discover_screen.dart';
import 'package:buddypair/view/home_screen/screens/home_screen.dart';
import 'package:buddypair/view/details/screens/intrested_screen.dart';
import 'package:buddypair/view/details/screens/job_details.dart';
import 'package:buddypair/view/details/screens/job_status.dart';
import 'package:buddypair/view/location_screen.dart';
import 'package:buddypair/view/auth/screens/login_page.dart';
import 'package:buddypair/view/details/screens/personal_details.dart';
import 'package:buddypair/view/details/screens/relationship_goals_screen.dart';
import 'package:buddypair/view/details/screens/seeker_job_details.dart';
import 'package:flutter/material.dart';
import 'bottomNavigation_bar_screen.dart';
import 'view/auth/screens/sign_up_page.dart';

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
        '/sentScreen':(context)=>SentScreen()
      },
    );
  }
}
