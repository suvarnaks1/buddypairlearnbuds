import 'package:buddypair/dating_App/view/drawer/left_side_drawer.dart';
import 'package:buddypair/matrimony_App/view/drawer/rightside_matrimony.dart';
import 'package:buddypair/matrimony_App/view/home_page_matrimony/screens/tabbargrid_matrimony.dart';
import 'package:buddypair/matrimony_App/view/notifiaction_matrimony/screens/notification_screen_matrimony.dart';
import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';
import '../../../../common/color_constants.dart';

class MatrimonyHomeScreen extends StatelessWidget {
  const MatrimonyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftSideMenu(),
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
                            builder: (context) => NotificationScreenMatrimony()),
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
                            builder: (context) => RightsideMatrimony()),
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
            const SizedBox(height: 5),
           
            
            Expanded(child: TabbargridMatrimony())
          ],
        ),
      ),
    );;
  }
}