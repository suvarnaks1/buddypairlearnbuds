import 'package:buddypair/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/appbarfonts_constants.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({super.key});

  // Default selected state
  String _dropdownValue = 'Germany';

  final List<String> _states = [
    'Germany',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Icon.png',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 5),
                    StatefulBuilder(
                      builder: (context, setState) {
                        return DropdownButton<String>(
                          value: _dropdownValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              _dropdownValue = newValue!;
                            });
                          },
                          items: _states
                              .map<DropdownMenuItem<String>>((String state) {
                            return DropdownMenuItem<String>(
                              value: state,
                              child: Text(state),
                            );
                          }).toList(),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                AppbarfontsConstants(
                  title: 'Discover',
                  color: Colors.black,
                  fontSize: 24,
                ),
                Spacer(),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Center(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search))),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Center(
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.menu))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Colors.white,
                                width: 3.0,
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/images/download.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 9,
                            left: 9,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstants.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: ColorConstants.pinkColor,
                                  width: 1.0,
                                ),
                              ),
                              child: const Text(
                                'Online',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 125,
                            left: 32,
                            child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1.0,
                                        ),
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                      child: Center(
                                          child: Text(
                                        '1.2 km away',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                                    Row(
                                      children: [
                                        Text('James',
                                            style: GoogleFonts.oswald(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(width: 5),
                                        Text('19',
                                            style: GoogleFonts.oswald(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    Text(
                                      'Germany',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppbarfontsConstants(
                      title: "Interest",
                      color: ColorConstants.blackColor,
                      fontSize: 20),
                  AppbarfontsConstants(
                      title: "View all",
                      color: ColorConstants.pinkColor,
                      fontSize: 16),
                ],
              ),
              InterestsChips(),
             AppbarfontsConstants(title: 'Around Me', color: ColorConstants.blackColor, fontSize: 20,),
              Row(
                children: [
                  Text('People With'),
                  Text('"Music"'),
                  Text('Intrested Around You')
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Maps.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InterestsChips extends StatefulWidget {
  @override
  _InterestsChipsState createState() => _InterestsChipsState();
}

class _InterestsChipsState extends State<InterestsChips> {
  // Keep track of selected chips
  final List<bool> _selectedChips = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          _buildChip(0, 'Football', Icons.sports_soccer),
          _buildChip(1, 'Nature', Icons.nature),
          _buildChip(2, 'Language', Icons.language),
          _buildChip(3, 'Photography', Icons.photo_camera),
          _buildChip(4, 'Music', Icons.music_note),
          _buildChip(5, 'Writing', Icons.edit),
        ],
      ),
    );
  }

  Widget _buildChip(int index, String label, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle the selection state of the chip
          _selectedChips[index] = !_selectedChips[index];
        });
      },
      child: Chip(
        avatar: Icon(icon, size: 16),
        label: Text(
          label,
          style: TextStyle(
            color: _selectedChips[index] ? Colors.white : Colors.black,
          ),
        ),
        backgroundColor:
            _selectedChips[index] ? Colors.purple.shade300 : Colors.white,
        side: BorderSide(color: Colors.purple.shade300),
      ),
    );
  }
}
