import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../auth/screens/sign_up_page.dart';

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
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
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppbarfontsConstants(title: 'RelationShip Goals', color: ColorConstants.blackColor, fontSize: 20),
                  const SizedBox(height: 20),
                  CheckboxListTile(
                    title: Text("Short Term Relationship",style: TextStyle(color: ColorConstants.blackColor,fontSize: 18,),),
                    value: isEmployer,
                    onChanged: (value) {
                      setState(() {
                        isEmployer = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text("Long Term Relationship",style: TextStyle(color: ColorConstants.blackColor,fontSize: 18,),),
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
        ),
      ),
    );
  }
}
