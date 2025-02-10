import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../common/appbarfonts_constants.dart';

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
                  backgroundColor: ColorConstants.grayColor,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              size: 24,
                              color: ColorConstants.primaryColor,
                            ))),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstants.grayColor,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 19,
                    child: Center(
                        child: Image.asset(
                      'assets/images/filter.png',
                      height: 24,
                      color: ColorConstants.primaryColor,
                    )),
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
              IntrestsList(),
              AppbarfontsConstants(
                title: 'Around Me',
                color: ColorConstants.blackColor,
                fontSize: 20,
              ),
              Row(
                children: [
                  AppbarfontsConstants(
                    title: 'People With',
                    color: ColorConstants.grayColor,
                    fontSize: 14,
                  ),
                  AppbarfontsConstants(
                    title: '"Music"',
                    color: ColorConstants.pinkColor,
                    fontSize: 14,
                  ),
                  AppbarfontsConstants(
                    title: 'Intrested Around You',
                    color: ColorConstants.grayColor,
                    fontSize: 14,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
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

class IntrestsList extends StatefulWidget {
  @override
  _IntrestsListState createState() => _IntrestsListState();
}

class _IntrestsListState extends State<IntrestsList> {
  String? selectedTag;

  final List<Map<String, dynamic>> firstRowInterests = [
    {'image': 'assets/images/football.png', 'label': 'Football'},
    {'image': 'assets/images/tea-leaves.png', 'label': 'Nature'},
    {'image': 'assets/images/world.png', 'label': 'Language'},
    {'image': 'assets/images/airplane.png', 'label': 'Travel'},
    {'image': 'assets/images/businessman.png', 'label': 'Jobs'},
    {'image': 'assets/images/video.png', 'label': 'Reels'},
  ];

  final List<Map<String, dynamic>> secondRowInterests = [
    {'image': 'assets/images/photography.png', 'label': 'Photography'},
    {'image': 'assets/images/music.png', 'label': 'Music'},
    {'image': 'assets/images/writing.png', 'label': 'Writing'},
    {'image': 'assets/images/movie-clapper-open.png', 'label': 'Movies'},
    {'image': 'assets/images/virtual.png', 'label': 'Technology'},
    {'image': 'assets/images/woman.png', 'label': 'Fashion & Style'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 5),
          // First Row (Scrollable)
          SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: firstRowInterests.map((interest) {
                  bool isSelected = selectedTag == interest['label'];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTag = isSelected ? null : interest['label'];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? const Color(0xffdd88cf) : Colors.white,
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xffdd88cf)
                              : Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            interest['image'],
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            interest['label'],
                            style: GoogleFonts.aldrich(
                              fontSize: 16,
                              color:
                                  isSelected ? Colors.white : Color(0xff4b164c),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Second Row (Scrollable)
          SizedBox(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: secondRowInterests.map((interest) {
                  bool isSelected = selectedTag == interest['label'];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTag = isSelected ? null : interest['label'];
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? const Color(0xffdd88cf) : Colors.white,
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xffdd88cf)
                              : Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            interest['image'],
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            interest['label'],
                            style: GoogleFonts.aldrich(
                              fontSize: 16,
                              color:
                                  isSelected ? Colors.white : Color(0xff4b164c),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
