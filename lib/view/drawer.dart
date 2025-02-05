import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:google_fonts/google_fonts.dart';

import 'viewed_my_profile.dart';



class Rightsidemenu extends StatefulWidget {
  const Rightsidemenu({super.key});

  @override
  State<Rightsidemenu> createState() => _RightsidemenuState();
}

class _RightsidemenuState extends State<Rightsidemenu> {
  int _selectedIndex = 0;
  bool effectEnabled = true;
  final List<Widget> _pages = [
    ViewedMyProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff4b164c),
      child: Container(
        decoration: BoxDecoration(color: Color(0xff4b164c)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundImage:
                                AssetImage('assets/images/woman1.png')),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Stone Stellar',
                          
                        ),
                        Row(
                          children: [
                            // Image.asset('assets/images/crown.png'),
                            Text(
                              'Prime Member',
                              style: GoogleFonts.abel(
                                color: Colors.yellowAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 11,
                  itemBuilder: (context, index) {
                    final items = [
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
                    bool isSelected = _selectedIndex == index;

                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Container(
                            height: isSelected ? 50 : 40,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Colors.grey.withOpacity(0.8)
                                  : Colors.transparent,
                              borderRadius:
                                  isSelected ? BorderRadius.circular(10) : null,
                            ),
                            child: ListTile(
                              title: Text(
                                items[index],
                                style: GoogleFonts.abel(
                                  fontSize: 16,
                                  color:
                                      isSelected ? Colors.white : Colors.white,
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (index < items.length - 1)
                          Divider(color: Colors.grey),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Colors.purple.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      Text(
                        'Logout',
                        textAlign: TextAlign.center,
                       
                      ),
                    ],
                  ),
                  onTap: () {
                    // Logout functionality here
                  },
                ),
              ),
            ],
          ),
        ),
      ).asGlass(
        enabled: effectEnabled,
        tintColor: Colors.transparent,
        clipBorderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}