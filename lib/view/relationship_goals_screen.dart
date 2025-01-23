import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'auth/screens/sign_up_page.dart';

class RelationshipGoalsScreen extends StatefulWidget {
  @override
  _RelationshipGoalsScreenState createState() =>
      _RelationshipGoalsScreenState();
}

class _RelationshipGoalsScreenState extends State<RelationshipGoalsScreen> {
  bool isEmployer = false;
  bool isEmployee = false;
  bool isJobSeeker = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Relationship Goals",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: Text("Short Term Relationship"),
                value: isEmployer,
                onChanged: (value) {
                  setState(() {
                    isEmployer = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text("Long Term Relationship"),
                value: isEmployee,
                onChanged: (value) {
                  setState(() {
                    isEmployee = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 20),
              CustomButtom(
                boxcolor: Colors.black,
                title: 'Next',
                ontap: () {
                     Navigator.pushNamed(context, '/intrestedScreen'); 
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
