import 'dart:ui';

import 'package:buddypair/dating_App/view/bottomNavigation_bar_screen.dart';
import 'package:buddypair/dating_App/view/home_screen/screens/home_screen.dart';
import 'package:buddypair/matrimony_App/view/additional_details_matrimony.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/color_constants.dart';


class LeftSideMenu extends StatefulWidget {
  const LeftSideMenu({super.key});

  @override
  State<LeftSideMenu> createState() => _LeftSideMenuState();
}

class _LeftSideMenuState extends State<LeftSideMenu> {
  int _selectedIndex = 0;
  bool effectEnabled = true;

  final List<String> menuItems = [
    'Dating',
    'Matrimony',
    'E-commerce',
    'Study Abroad',
    'Job Portal',
    ''
  ];

  final List<Widget> pages = [
   BottomNavBarExample(),
    MatrimonyAdditionaldetails()
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 400,
          child: Drawer(
            backgroundColor: ColorConstants.primaryColor,
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.transparent,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
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
                    ],
                  ),
                ).asGlass(
                  enabled: effectEnabled,
                  tintColor: Colors.transparent,
                  clipBorderRadius: BorderRadius.circular(15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
