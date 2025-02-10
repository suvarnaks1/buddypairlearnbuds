import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {
      'image': 'assets/images/download.jpg',
      'name': 'Sithara Nair',
      'age': '25 YRS',
      'location': 'Developer, Hyderabad'
    },
    {
      'image': 'assets/images/download.jpg',
      'name': 'Sithara Nair',
      'age': '25 YRS',
      'location': 'Developer, Hyderabad'
    },
    {
      'image': 'assets/images/download.jpg',
      'name': 'Sithara Nair',
      'age': '25 YRS',
      'location': 'Developer, Hyderabad'
    },
    {
      'image': 'assets/images/download.jpg',
      'name': 'Sithara Nair',
      'age': '25 YRS',
      'location': 'Developer, Hyderabad'
    },
    {
      'image': 'assets/images/download.jpg',
      'name': 'Sithara Nair',
      'age': '25 YRS',
      'location': 'Developer, Hyderabad'
    },
    {
      'image': 'assets/images/download.jpg',
      'name': 'Sithara Nair',
      'age': '25 YRS',
      'location': 'Developer, Hyderabad'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          final profile = profiles[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: ColorConstants.grayColor,
                width: 3.0,
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/download.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    child: const Text(
                      'Online',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 8,
                  right: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            profile['name']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            profile['age']!,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        profile['location']!,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 190,
                  bottom: 9,
                  child: Container(
                    height: 120,
                    width: 40,
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.thumb_up,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.comment,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.grey,
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 90, top: 40),
                  child: Text(
                    'Matches',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110, top: 40),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(100)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sort,
                            color: Colors.black,
                          ))),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Text(
                    'Your Matches 47',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.7),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 5,
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
                                      image: AssetImage('assets/images/sabith.jpg'),
                                      fit: BoxFit.fill)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                width: 120,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
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
                                width: 110,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white30,
                                    border: Border.all(
                                        color: Colors.white30,
                                        style: BorderStyle.solid,
                                        width: 2),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Center(
                                  child: Text(
                                    '1.8 km away',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 180,left: 45),
                            child: Text('Sabith, 19',style: TextStyle(fontSize: 18,color: Colors.white),),
                            ),
                            Padding(padding: EdgeInsets.only(top: 205,left: 40),
                            child: Text('Malappuram',style: TextStyle(fontSize: 16,color: Colors.white),),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ]),
        )));
  }
}