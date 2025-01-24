import 'package:flutter/material.dart';

class QualificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(width: double.infinity,
        height: double.infinity,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: 7,
            itemBuilder: (context, index) {
              return GridCondainer();
            },
          ),
        ));
  }
}

class GridCondainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      width: 100,
      color: Colors.deepOrange,
    );
  }
}
