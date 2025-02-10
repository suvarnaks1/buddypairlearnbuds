

import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';
import '../../../../common/circular_container.dart';

class RecentMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B164C),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xff4B164C),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child:  whitecCircularContainer(
              imagePath: "assets/images/back.png",
              onPressed: () {},
            ),
          ),
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: AppbarfontsConstants(
                      title: 'Messages',
                      color: Color(0xFFFDF7FD),
                      fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AppbarfontsConstants(
                    title: 'Recent Matches',
                    color: Color(0xFFFDF7FD),
                    fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    width: 90,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/download.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xFFFDF7FD),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(8.0),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDD88CF),
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(image: AssetImage('assets/images/Avatar.png'))
                                  ),
                                ),
                                Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppbarfontsConstants(title: 'Alfredo Calzoni', color: Color(0Xff22172A), fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppbarfontsConstants(title: 'What about that new jacket\n if I ...', color: Color(0Xff22172A), fontSize: 16),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.circle_rounded,color: Color(0xFFDD88CF),),
                          ),
                          AppbarfontsConstants(title: '09:18', color: Color(0xFFDD88CF), fontSize: 12),
                        ],
                      )
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
