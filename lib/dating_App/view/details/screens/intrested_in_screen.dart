
import 'package:flutter/material.dart';

import '../../../../common/Text.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Intrested In",
              style: TextStyles().heading2(color: Colors.black),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 220,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, '/homeScreen');
                  },
                  child: Text(
                    'MEN',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5856d6),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 220,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'WOMEN',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffff2d55),
                    foregroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
            ),
            Container(
              width: 220,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff007aff),
                    Color(0xffffd8e4)
                  ], // Darker gradient
                  begin: Alignment.centerLeft,
                  end: Alignment.center,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'BOTH',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: StadiumBorder(),
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
