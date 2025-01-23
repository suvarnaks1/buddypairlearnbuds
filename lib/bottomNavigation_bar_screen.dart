import 'package:buddypair/utils/color_constants.dart';
import 'package:buddypair/view/discover/screens/discover_screen.dart';
import 'package:buddypair/view/matches/screens/matches_screen.dart';
import 'package:flutter/material.dart';

import 'view/home_screen/screens/home_screen.dart';
import 'view/location_screen.dart';

class BottomNavBarExample extends StatefulWidget {
  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _selectedIndex = 0;

  // List of pages for navigation
  final List<Widget> _pages = [
    HomeScreen(),
    DiscoverScreen(),
    LocationScreen(),
   MatchesPage(),
    GroupScreen(),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.pinkAccent,
            unselectedItemColor: Colors.grey,
            selectedIconTheme:
                IconThemeData(color: Colors.pinkAccent, size: 30),
            unselectedIconTheme: IconThemeData(color: Colors.grey, size: 30),
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset(
                    'assets/images/homeicon.png',
                  ),
                  isSelected: _selectedIndex == 0,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Discover.png'),
                  isSelected: _selectedIndex == 1,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Gradient.png'),
                  isSelected: _selectedIndex == 2,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Matches.png'),
                  isSelected: _selectedIndex == 3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIconWithCircle(
                  icon: Image.asset('assets/images/Message.png'),
                  isSelected: _selectedIndex == 4,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildIconWithCircle({required Widget icon, required bool isSelected}) {
  return isSelected
      ? Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: ColorConstants.pinkColor),
          child: Center(child: icon),
        )
      : icon;
}

class EcoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Eco Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class GradientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Gradient Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class GroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Group Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Chat Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
