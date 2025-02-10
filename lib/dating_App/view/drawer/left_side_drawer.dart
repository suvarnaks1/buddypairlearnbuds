import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/color_constants.dart';

class Leftsidemenu extends StatefulWidget {
  const Leftsidemenu({super.key});

  @override
  State<Leftsidemenu> createState() => _LeftsidemenuState();
}

class _LeftsidemenuState extends State<Leftsidemenu> {
  int _selectedIndex = 0;
  bool effectEnabled = true;

  final List<String> menuItems = [
    'Dating',
    'Matrimony',
    'E commerce',
    'Study Abroad',
    'Job Portal',
  ];

  final List<Widget> pages = [];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstants.primaryColor,
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
                    borderRadius: isSelected ? BorderRadius.circular(10) : null,
                  ),
                  child: ListTile(
                    title: Text(
                      menuItems[index],
                      style: GoogleFonts.abel(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
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
    );
  }
}
