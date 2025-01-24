import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/appbarfonts_constants.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              child: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            ),
            AppbarfontsConstants(title: 'Location', color: ColorConstants.blackColor, fontSize: 24.0,),
            // Text(
            //   "Location",
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.tune),
              ),
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
                Text(
                  'Your Matches',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  '47 ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDD88CF),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of items in each row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3, // Adjust based on your design
                ),
                itemCount: 6, // Number of items
                itemBuilder: (context, index) {
                  return MatchCard();
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
              backgroundColor: Color(0xFFDD88CF),
            ),
            CircleAvatar(
              radius: 31,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xFFC4C4C4),
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
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              TextSpan(
                text: count,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFDD88CF),
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
            color: Color(0xFFDD88CF), // Border color
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
                  color: Color(0xFFDD88CF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Center(
                child: Text(
                  '100% Match',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
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
                    color: Colors.white,
                    width: 1.0,
                  ),
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text(
                  '1.8 km away',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 180, left: 45),
            child: Row(
              children: [
                Text('Rahul,',
                    style: GoogleFonts.oswald(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text('26',
                    style: GoogleFonts.oswald(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 205, left: 40),
            child: Text(
              'Malappuram',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
