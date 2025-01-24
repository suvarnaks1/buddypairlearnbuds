
import 'package:buddypair/view/matches/screens/matches_screen.dart';
import 'package:flutter/material.dart';

import 'qualifications/screens/qualification_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreens> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFFFCF7FD),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  color: Color(0xFFF8E7F6),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Tab(text: "Near By")),
                    Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Tab(
                          text: "Designation",
                        )),
                    Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9)),
                        child: Tab(text: "Qualification")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(children: [
                  LocationTab(),
                  DesignationTab(),
                 QualificationScreen()
              
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget DesignationTab() {
  return Column(
    children: [],
  );
}



class LocationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 25,
        childAspectRatio: 3 / 2.5,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/download.jpg',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          decoration: BoxDecoration(
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 1, color: Colors.white38)),
                          child: Text(
                            'Online',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Sithara Nair',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'F, 28 YRS',
                            style: TextStyle(
                              color: Color.fromARGB(255, 241, 236, 236),
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Developer, Hyderabad',
                        style: TextStyle(
                          color: Color.fromARGB(255, 241, 236, 236),
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 20,
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 10, top: 3, bottom: 3, right: 3),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        SizedBox(height: 5),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                        SizedBox(height: 5),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white30,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
