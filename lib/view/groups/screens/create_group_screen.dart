import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:flutter/material.dart';

import '../../../common/color_constants.dart';

class CreateGroupScreen extends StatelessWidget {
  final List<String> memberImages = [
    'assets/images/profile pic 2.png',
    'assets/images/profile pic 2.png',
    'assets/images/profile pic 2.png',
    'assets/images/profile pic 2.png',
    'assets/images/profile pic 2.png',
  ];
  CreateGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppbarfontsConstants(
                      title: 'Buddy pair',
                      color: ColorConstants.primaryColor,
                      fontSize: 24),
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
                          icon: Icon(Icons.notifications_on_outlined,color: ColorConstants.primaryColor,))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        // size: 20,
                        color: ColorConstants.primaryColor,
                      )),
                  SizedBox(
                    width: 85,
                  ),
                  AppbarfontsConstants(
                      title: 'Create Group',
                      color: ColorConstants.blackColor,
                      fontSize: 16)
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            outfitFontsConstants(
                title: 'Group Title',
                color: ColorConstants.blackColor,
                fontSize: 20),
            SizedBox(
              height: 10,
            ),
            AppbarfontsConstants(
              title: 'Group Description',
              color: Color(0xFF797C7B),
              fontSize: 16,
            ),
            SizedBox(
              height: 10,
            ),
            outfitFontsConstants(
              title: 'Make a group call with friends',
              color: ColorConstants.blackColor,
              fontSize: 40,
            ),
            SizedBox(
              height: 10,
            ),
            AppbarfontsConstants(
              title: 'Group Admin',
              color: Color(0xFF797C7B),
              fontSize: 16,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 52,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppbarfontsConstants(
                      title: 'Rashid Khan',
                      color: ColorConstants.blackColor,
                      fontSize: 16,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppbarfontsConstants(
                      title: 'Group Admin',
                      color: Color(0xFF797C7B),
                      fontSize: 12,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            AppbarfontsConstants(
              title: 'Invited Members',
              color: Color(0xFF797C7B),
              fontSize: 16,
            ),
            const SizedBox(height: 16),

            // Avatars and Add Button
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16, // Space between avatars
              runSpacing: 16, // Space between rows
              children: [
                ...memberImages.map((image) => buildAvatar(image)).toList(),
                buildAddButton(),
              ],
            ),
            const SizedBox(height: 40),

            // Create Button
            Center(
              child: SizedBox(
                width: 330,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: AppbarfontsConstants(
                    title: 'Create',
                    color: ColorConstants.whiteColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildAvatar(String imageUrl) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imageUrl),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.add,
              size: 16,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

// Widget for add button with dashed border
Widget buildAddButton() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, style: BorderStyle.solid),
          ),
        ),
        const Icon(Icons.add, size: 30, color: Colors.grey),
      ],
    ),
  );
}
