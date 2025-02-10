import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:buddypair/view/dating_app/drawer/left_side_drawer.dart';
import 'package:buddypair/view/dating_app/drawer/right_side_drawer.dart';
import 'package:buddypair/view/dating_app/notification/screens/notification_page.dart';
import 'package:flutter/material.dart';
import 'story_page.dart';
import 'tab_bar_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Leftsidemenu(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          children: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu, color: ColorConstants.primaryColor),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
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
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationPage()),
                      );
                    },
                    icon: Icon(
                      Icons.notifications_on_outlined,
                      color: ColorConstants.primaryColor,
                    ))),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Rightsidemenu()),
                      );
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile pic 3.png'),
              ),
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
