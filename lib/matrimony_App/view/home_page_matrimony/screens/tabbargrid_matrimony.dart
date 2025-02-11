


import 'package:buddypair/common/color_constants.dart';
import 'package:buddypair/matrimony_App/view/home_page_matrimony/screens/location_tab_matrimony.dart';
import 'package:buddypair/matrimony_App/view/home_page_matrimony/screens/qualification_screen_matrimony.dart';
import 'package:flutter/material.dart';



class TabbargridMatrimony extends StatefulWidget {
  const TabbargridMatrimony({super.key});

  @override
  State<TabbargridMatrimony> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TabbargridMatrimony> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  color: ColorConstants.lightPinkColor,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  labelColor: ColorConstants.blueColor,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Tab(text: "Location",)),
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
                  LocationTabMatrimony(),
                 QualificationScreenMatrimony(),
                 QualificationScreenMatrimony()
              
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
