import 'package:buddypair/view/home_screen/screens/qualifications/screens/qualification_screen.dart';
import 'package:flutter/material.dart';

import 'story_page.dart';
import 'home_screen_gridviewbuilder.dart';
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
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            const Text(
              'Buddy Pair',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
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
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download.jpg'),
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
