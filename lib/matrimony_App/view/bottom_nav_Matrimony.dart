
import 'package:flutter/material.dart';

import '../../common/color_constants.dart';
import '../../dating_App/view/home_screen/screens/home_screen.dart';
import 'home_page_matrimony/screens/matrimony_home_Screen.dart';




class BottomNavMatrimony extends StatefulWidget {
  const BottomNavMatrimony({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavMatrimony> {
  int _selectedIndex = 2; // Home is selected by default


  final List<Widget> _pages = [
 MatrimonyHomeScreen()


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
    bottomNavigationBar:


     Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
        color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],),    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.search, 0),
          _buildNavItem(Icons.favorite, 1),
          _buildNavItem(Icons.home, 2, isCenter: true),
          _buildNavItem(Icons.star, 3),
          _buildNavItem(Icons.chat, 4),
        ],
      ),
     ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, {bool isCenter = false}) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,

          color: _selectedIndex == index ? ColorConstants.primaryColor : ColorConstants.pinkColor,
        ),
        child: Icon(
          icon,
          size: isCenter ? 39 : 26,
          color: _selectedIndex == index ? Colors.white : Colors.white,
        ),
      ),
    );
  }
}