import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../auth/screens/sign_up_page.dart';

class JobStatusScreen extends StatefulWidget {
  @override
  _JobStatusScreenState createState() => _JobStatusScreenState();
}

class _JobStatusScreenState extends State<JobStatusScreen> {
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
                "Job Status",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                title: Text("Employer"),
                value: isEmployer,
                onChanged: (value) {
                  setState(() {
                    isEmployer = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text("Employee"),
                value: isEmployee,
                onChanged: (value) {
                  setState(() {
                    isEmployee = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text("Job Seeker"),
                value: isJobSeeker,
                onChanged: (value) {
                  setState(() {
                    isJobSeeker = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 20),
                CustomButtom(
                          boxcolor: Colors.black,
                          title: 'Next',
                          ontap: () {

                               Navigator.pushNamed(context, '/jobdetails'); 
                          },
                        ),
            ],
          ),
        ),
      ),
    );
  }
}
