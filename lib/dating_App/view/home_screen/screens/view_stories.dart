
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_slider/vertical_slider.dart';
import '../../../../common/Text.dart';
import '../../../../common/appbarfonts_constants.dart';
import '../../../../common/color_constants.dart';

class ViewStory extends StatefulWidget {
  const ViewStory({
    super.key,
  });

  @override
  State<ViewStory> createState() => _ViewStoryState();
}

class _ViewStoryState extends State<ViewStory> {
  var volume = 1.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/download.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30,
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage(
                              'aassets/images/download.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          left: 46,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Color(0XFF08F403),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stone Steller',
                            style: TextStyles().bodyText(
                              color: Colors.white,
                            ),
                          ),
                          Text('Online',
                              style: TextStyle(
                                  color: ColorConstants.greenColor,
                                  fontSize: 10)),
                          SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 80,
                      left: 20,
                      child: Container(
                        height: 170,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 100,
                                  child: VerticalSlider(
                                    activeColor: Color(0XFF20A090),
                                    value: volume,
                                    onChanged: (value) {
                                      volume = value;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                              Image(
                                  image: AssetImage('assets/images/Audio.png'))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              AppbarfontsConstants(
                  title: ' # Tea Time',
                  color: ColorConstants.whiteColor,
                  fontSize: 40),
              SizedBox(height: 15),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  // color: Colors.black.withOpacity(0.8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(1),
                      blurRadius: 5,
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                          //  prefix: Image.asset('assets/images/Message.png'),
                            hintText: 'New',
                            hintStyle: GoogleFonts.aldrich(
                                color: ColorConstants.whiteColor),
                            filled: true,
                            fillColor: ColorConstants.primaryColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 6, color: ColorConstants.pinkColor),
                            ),
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(
                                  10), // Adjust padding if needed
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.message,color: ColorConstants.whiteColor,))
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.red,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}