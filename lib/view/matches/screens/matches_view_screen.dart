
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


import '../../splash/screens/splash_screen.dart';


class MatchProfile extends StatefulWidget {
  const MatchProfile({super.key});

  @override
  State<MatchProfile> createState() => _MatchProfileState();
}

class _MatchProfileState extends State<MatchProfile> {
  List<Map<String, String>> items = [
    {"image": "assets/images/nature.jpeg", "text": "Nature"},
    {"image": "assets/images/travel.jpeg", "text": "Travelling"},
    {"image": "assets/images/writing.jpeg", "text": "Writing"},
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: TabBarView(children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Rayul.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ]),
            ),

            // Content Over Image
            SafeArea(
              child: Column(
                children: [
                  // Back Icon
                  BackIcon(),
                  SizedBox(
                    height: 175,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 30,
                          left: 360,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            height: 70,
                            width: 7,
                            child: RotatedBox(
                              quarterTurns: 3,
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
                                    Container(child: Tab(text: " ")),
                                    Container(
                                        child: Tab(
                                      text: " ",
                                    )),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Alfredo Calzoni,20',
                    style: TextStyles().heading1(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'HAMBURG, GERMANY',
                    style: TextStyles().smallText(color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0XFF4B164AC),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2, color: Color(0XFFDD88CF))),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: CircularPercentIndicator(
                              radius: 22.0,
                              lineWidth: 4.0,
                              percent: 1.0,
                              center: Text(
                                "80%",
                                style:
                                    TextStyles().smallText(color: Colors.white),
                              ),
                              progressColor: Color(0XFFDD88CF),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Match',
                            style: TextStyles().subheading(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AboutBottomNav(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //  section two

  Widget AboutBottomNav() {
    return Container(
      height: 350,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "About",
              style: TextStyles().bodyText(color: Colors.black45),
            ),
            const SizedBox(height: 10),
            Text(
              "A good listener. I love having a good talk to know each other's side.",
              style: TextStyles().bodyText(),
            ),
            const SizedBox(height: 30),
            Text(
              "Interest",
              style: TextStyles().bodyText(color: Colors.black45),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                              borderRadius: BorderRadius.circular(20)),
                          height: 40,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(items[index]["image"]!,
                                    width: 20, height: 50),
                                Text(
                                  items[index]["text"]!,
                                  style: TextStyles().bodyText(),
                                ),
                              ],
                            ),
                          )),
                        )
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                elevation: 4,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0XFFF7B5B5),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0XFF4B16AC),
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0XFFDD88CF),
                            child: Icon(
                              Icons.favorite_outlined,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0XFFF7B5B5),
                            child: Image(
                                image:
                                    AssetImage('assets/images/chaticon.png'))),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget BackIcon() {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Row(
      children: [
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              shape: BoxShape.circle,
            ),
            child: IconButton(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 16,
                  color: Colors.white,
                ))),
        Spacer(),
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Colors.white38)),
          child: Row(
            children: [
              Image(image: AssetImage('assets/images/flighticon.png')),
              SizedBox(
                width: 8,
              ),
              Text(
                '25.5km',
                style: TextStyles().bodyText(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}