import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';


import '../../../common/circular_container.dart';

class  MatchesScreen extends StatelessWidget {
  const  MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              circularContainer(
                imagePath: "assets/images/arrow.png",
                onPressed: () {},
              ),
              AppbarfontsConstants(
                title: 'Matches',
                color: ColorConstants.blackColor,
                  fontSize: 24),
              circularContainer(
                imagePath: "assets/images/sort_logo.jpg",
                  onPressed: () {},
              ),
            ],
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildIconButton(
                  icon: Icons.favorite,
                  text: 'Likes',
                  count: '32',
                  iconBackgroundColor: Color(0xFFDD88CF),
                ),
                const SizedBox(width: 20),
                _buildIconButton(
                  icon: Icons.chat_bubble,
                  text: 'Connect',
                  count: '15',
                  iconBackgroundColor: Color(0xFFDD88CF),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                AppbarfontsConstants(title: 'Your Matches', color: ColorConstants.primaryColor, fontSize: 20),
              
                const SizedBox(width: 5),
                  AppbarfontsConstants(title: '47', color: ColorConstants.pinkColor, fontSize: 20),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3, 
                ),
                itemCount: 6, 
                itemBuilder: (context, index) {
                  return GestureDetector(onTap: (){
                    Navigator.pushNamed(context, '/matchesViewScreen'); 
                  },
                    child: MatchCard());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required String text,
    required String count,
    required Color iconBackgroundColor,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: ColorConstants.pinkColor
            ),
            CircleAvatar(
              radius: 31,
              backgroundColor: ColorConstants.whiteColor
            ),
            CircleAvatar(
              radius: 28,
              backgroundColor: ColorConstants.grayColor,
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$text ',
                style: TextStyle(
        fontFamily: 'Aldrich',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 30 / 24,
        color: ColorConstants.blackColor,
       
      ),
              ),
              TextSpan(
                text: count,
                style: TextStyle(
        fontFamily: 'Aldrich',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 30 / 24,
        color: ColorConstants.pinkColor,
       
      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MatchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.pinkColor, 
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/download.jpg'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 120,
              height: 35,
              decoration: BoxDecoration(
                  color: ColorConstants.pinkColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Center(
                child: AppbarfontsConstants(title: '100% Match', color: ColorConstants.whiteColor, fontSize: 12)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 140, left: 30),
            child: Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstants.whiteColor.withOpacity(0.3),
                    width: 1.0,
                  ),
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(32)),
              child: Center(
                child: AppbarfontsConstants(title: '1.8 km away', color: ColorConstants.whiteColor, fontSize: 11)
              
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 185, left: 45),
            child: Row(
              children: [
                Text('Rahul',
                    style:  TextStyle(
        fontFamily: 'Aldrich',
        fontWeight: FontWeight.bold,
        fontSize: 18,
        height: 30 / 24,
        color: ColorConstants.whiteColor,
       
      ),),
      SizedBox(width: 5,),
                Text('26',
                    style:  TextStyle(
        fontFamily: 'Aldrich',
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 30 / 24,
        color: ColorConstants.whiteColor,
       
      ),),
      SizedBox(width: 5,),
      CircleAvatar(radius: 4,backgroundColor:ColorConstants.greenColor ,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 205, left: 40),
            child: AppbarfontsConstants(title: 'Malappuram', color: ColorConstants.whiteColor.withOpacity(0.5), fontSize: 11)
          
          )
        ],
      ),
    );
  }
}
