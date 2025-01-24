import 'package:flutter/material.dart';

import '../../auth/screens/sign_up_page.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Container(
            height: 400,
            width: 500,
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
                children: [
                  Text(
                    'Job Details',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Form(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Company Name',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                         SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Designation',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                         SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Location',
                          labelStyle: const TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                        SizedBox(
                        height: 20,
                      ),
                      CustomButtom(
                        boxcolor: Colors.black,
                        title: 'Next',
                        ontap: () {
                             Navigator.pushNamed(context, '/seekerJobDetails'); 
                        },
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
