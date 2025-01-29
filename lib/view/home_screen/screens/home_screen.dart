import 'dart:ui';

import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/circular_container.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'story_page.dart';
import 'tab_bar_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        
        title: Row(
          children: [
           
          Image.asset('assets/images/buddypairmenu.png'),
            SizedBox(
              width: 5,
            ),
            AppbarfontsConstants(
                title: 'Buddy pair',
                color: ColorConstants.primaryColor,
                fontSize: 24),
            const Spacer(),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Image.asset('assets/images/bellbutton.png')),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile pic 3.png'),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Story(),
            const SizedBox(height: 10),
            Expanded(child: HomeScreens())
          ],
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          // Glass Effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.deepPurple.withOpacity(0.6),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/profile pic 3.png'),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Stone Stellar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        Text("@Prime Member",
                            style: TextStyle(color: Colors.white70)),
                        Text("Online",
                            style: TextStyle(color: Colors.greenAccent)),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    menuItem("My Profile"),
                    menuItem("Sent Request"),
                    menuItem("Viewed My Profile"),
                    menuItem("Accept Request"),
                    menuItem("Reject"),
                    menuItem("Revived"),
                    menuItem("Shortlisted By"),
                    menuItem("Shortlisted"),
                    menuItem("Contacted"),
                    menuItem("Message"),
                    menuItem("Settings"),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text("Logout", style: TextStyle(color: Colors.white)),
                onTap: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget menuItem(String title) {
    return ListTile(
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }
}
