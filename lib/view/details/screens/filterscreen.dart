import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';


class FilterScreen extends StatefulWidget {
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: ColorConstants.primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: AppbarfontsConstants(
              title: 'Filter',
              color: ColorConstants.whiteColor,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: AssetImage(
                        "assets/images/Rectangle 1131.png",
                      ))),
                ),
                AppbarfontsConstants(
                    title: 'SORT BY',
                    color: ColorConstants.blackColor,
                    fontSize: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Newest members',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Last Active',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Distance ',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Popularity',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Age',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(height: 20,),
                  AppbarfontsConstants(
                    title: 'Filter By',
                    color: ColorConstants.blackColor,
                    fontSize: 20),
                     SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Gender',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Location',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Interests/Hobbies',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Languages Spoken',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PopinsFontsConstants(
                        title: 'Relationship Goals ',
                        color: ColorConstants.blackColor,
                        fontSize: 12),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.check_circle)),
                  ],
                ),
              SizedBox(height: 20,),
           
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10,),
                     ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4B164C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                )
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
