import 'package:flutter/material.dart';

import 'auth/screens/sign_up_page.dart';



class SeekerJobDetailsScreen extends StatefulWidget {
  @override
  _JobDetailsScreenState createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<SeekerJobDetailsScreen> {
  final TextEditingController titleController = TextEditingController();
  String selectedExpertise = "Value";

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      'Job Details',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
             SizedBox(height: 20),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
               SizedBox(height: 10),
              Text(
                "Expertise Level",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
               SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: selectedExpertise,
                items: ["Value", "Beginner", "Intermediate", "Expert"]
                    .map(
                      (e) => DropdownMenuItem<String>(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedExpertise = value!;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
          SizedBox(height: 20),
                CustomButtom(
                          boxcolor: Colors.black,
                          title: 'Next',
                          ontap: () {
                               Navigator.pushNamed(context, '/relationShipGoalsScreen'); 
                          },
                        ),
            ],
          ),
        ),
      ),
    );
  }
}