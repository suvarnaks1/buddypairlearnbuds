
import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          children: [
            CircleAvatar(
              radius: 38,
              backgroundImage: AssetImage("assets/images/Mask Group1.png"),
            ),
            Positioned(
              left: 54,
              top: 55,
              child: CircleAvatar(
                radius: 11,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 8,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 90,
              left: 8,
              child: Text(
                "Your Story",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black26,
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 5),
        Expanded(
          child: SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        height: 76,
                        width: 76,
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomCenter,
                            colors: [Colors.amber, Colors.pink],
                          ),
                        ),
                        child: Container(
                          height: 74,
                          width: 74,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              height: 72,
                              width: 72,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/download.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                   AppbarfontsConstants(title: 'Rahul', color: ColorConstants.blackColor, fontSize: 14)
                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
