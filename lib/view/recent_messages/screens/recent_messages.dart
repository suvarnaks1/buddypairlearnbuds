import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

import '../../../common/circular_container.dart';

class RecentMessages extends StatelessWidget {
  RecentMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            whitecCircularContainer(
              imagePath: "assets/images/arrow.png",
              onPressed: () {},
            ),
            const SizedBox(
              width: 60,
            ),
            AppbarfontsConstants(
              title: 'Messages',
              color: ColorConstants.whiteColor,
              fontSize: 24,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: AppbarfontsConstants(
              title: 'Recent Matches',
              color: ColorConstants.whiteColor,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 92,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage('assets/images/Avatar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(
                                        'assets/images/Avatar.png'),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Alfredo Calzoni'),
                                      Text(
                                        'It will have two lines of heading ...',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Text('9:30')
                                ],
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
