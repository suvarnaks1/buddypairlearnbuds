
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
            Image.asset('assets/images/buddypairmenu.png'),SizedBox(width: 5,),
            AppbarfontsConstants(title: 'Buddy pair', color: ColorConstants.primaryColor, fontSize: 24),
           
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
              child: Image.asset('assets/images/bellbutton.png')
            ),
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
