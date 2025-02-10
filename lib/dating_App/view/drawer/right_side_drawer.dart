import 'dart:ui';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

import 'package:google_fonts/google_fonts.dart';

import '../profile/screens/edit_profile.dart';
import '../requests/screens/Accepted_screen.dart';
import '../requests/screens/Contacted_screen.dart';
import '../requests/screens/Received_screen.dart';
import '../requests/screens/Shortlist_screen.dart';
import '../requests/screens/Shortlisted_by_screen.dart';
import '../requests/screens/messages.dart';
import '../requests/screens/reject_screen.dart';
import '../requests/screens/sent_screen.dart';
import '../settings/screens/settings_screens.dart';
import '../viewed_my_profile.dart';

class Rightsidemenu extends StatefulWidget {
  const Rightsidemenu({super.key});

  @override
  State<Rightsidemenu> createState() => _RightsidemenuState();
}

class _RightsidemenuState extends State<Rightsidemenu> {
  int _selectedIndex = 0;
  bool effectEnabled = true;

  final List<String> menuItems = [
    'My Profile',
    'Sent Request',
    'Viewed My Profile',
    'Accept Request',
    'Reject',
    'Reviewed',
    'Shortlisted By',
    'Shortlisted',
    'Contacted',
    'Message',
    'Settings',
  ];

  final List<Widget> pages = [ 
    EditProfile(),
    SentScreen(),
    ViewedMyProfile(),
    AcceptedScreen(),
    RejectScreen(),
    ReceivedScreen(),
    ShortlistedByScreen(),
    ShortlistScreen(),
    ContactedScreen(),
    Messages(),
    SettingsScreens()

  
];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff4b164c),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage('assets/images/woman1.png'),
                          ),
                          Positioned(
                            top: 4,
                            right: 4,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Stone Stellar',
                            style: GoogleFonts.abel(
                              color: const Color(0xfffa5075),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Prime Member',
                            style: GoogleFonts.abel(
                              color: Colors.yellowAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Online',
                            style: GoogleFonts.abel(
                              color: Colors.greenAccent,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: 22,
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.primaryColor,
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      bool isSelected = _selectedIndex == index;

                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => pages[index],
                                ),
                              );
                            },
                            child: Container(
                              height: isSelected ? 50 : 40,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.grey.withOpacity(0.4)
                                    : Colors.transparent,
                                borderRadius: isSelected
                                    ? BorderRadius.circular(10)
                                    : null,
                              ),
                              child: ListTile(
                                title: Text(
                                  menuItems[index],
                                  style: GoogleFonts.abel(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: isSelected
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (index < menuItems.length - 1)
                            const Divider(color: Colors.grey),
                        ],
                      );
                    },
                  ),
                ),

                // **Logout Button**
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.logout, color: Colors.white),
                        const SizedBox(width: 8),
                        Text(
                          'Logout',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Implement Logout functionality
                    },
                  ),
                ),
              ],
            ),
          ).asGlass(
            enabled: effectEnabled,
            tintColor: Colors.transparent,
            clipBorderRadius: BorderRadius.circular(15.0),
          ),
        ],
      ),
    );
  }
}
