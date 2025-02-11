import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditMyProfileMatrimony extends StatelessWidget {
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
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              ),
            ),
          ),
          flexibleSpace: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: AppbarfontsConstants(
                        title: "Edit My Profile",
                        color: ColorConstants.whiteColor,
                        fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstants.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/Rectangle 1131.png'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage('assets/images/download.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldFontsConstants(
                            title: "Nazrul Islam",
                            color: ColorConstants.blackColor,
                            fontSize: 20),
                        AppbarfontsConstants(
                            title: "Never give up 💪",
                            color: ColorConstants.fontGrayColor,
                            fontSize: 12)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                    child: PopinsFontsConstants(
                        title:
                            'All your account information can be accessed and edited here but your mail will still remain un-edited.',
                        color: ColorConstants.blackColor,
                        fontSize: 10)),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Name',
                            hintStyle: GoogleFonts.poppins(fontSize: 10)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Username',
                            hintStyle: GoogleFonts.poppins(fontSize: 10)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email',
                            hintStyle: GoogleFonts.poppins(fontSize: 10)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Phone Number',
                            hintStyle: GoogleFonts.poppins(fontSize: 10)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Bio',
                            hintStyle: GoogleFonts.poppins(fontSize: 10)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PopinsFontsConstants(
                          title: 'Images',
                          color: ColorConstants.blackColor,
                          fontSize: 10)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('assets/images/download.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('assets/images/download.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('assets/images/download.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PopinsFontsConstants(
                          title: 'Reals',
                          color: ColorConstants.blackColor,
                          fontSize: 10)),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('assets/images/download.jpg'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: PopinsFontsConstants(
                          title: 'Change Password',
                          color: ColorConstants.blackColor,
                          fontSize: 10)),
                ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff4B164C),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'Update',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
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