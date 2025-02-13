import 'dart:io';

import 'package:buddypair/common/appbarfonts_constants.dart';
import 'package:buddypair/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../auth/screens/sign_up_page.dart';

class PersonalDetailsScreen extends StatefulWidget {
  PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 800,
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
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    AppbarfontsConstants(
                        title: 'Personal Details',
                        color: ColorConstants.blackColor,
                        fontSize: 20),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Age',
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
                              labelText: 'DOB',
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
                              labelText: 'Hobbies',
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
                              labelText: 'Interest',
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
                              labelText: 'Smoking Habits',
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
                              labelText: 'Drinking Habits',
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
                              labelText: 'Qualifications',
                              labelStyle: const TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 370,
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppbarfontsConstants(
                                      title: 'Profile Pic ',
                                      color: ColorConstants.fontGrayColor,
                                      fontSize: 16),
                                  IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                height: 150,
                                                width: double.infinity,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.camera_alt,
                                                            color:
                                                                ColorConstants
                                                                    .blackColor,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          GestureDetector(
                                                              onTap: () {
                                                                _pickImageFromcameraPersonalDetails();
                                                              },
                                                              child: AppbarfontsConstants(
                                                                  title:
                                                                      "Camera",
                                                                  color: ColorConstants
                                                                      .blackColor,
                                                                  fontSize: 18))
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/gallery.png",
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          GestureDetector(
                                                              onTap: () {
                                                                _pickImageFromGalleryPersonalDetails();
                                                              },
                                                              child: AppbarfontsConstants(
                                                                  title:
                                                                      "Gallery",
                                                                  color: ColorConstants
                                                                      .blackColor,
                                                                  fontSize: 18))
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                          },
                                      icon: Image(
                                        image: AssetImage(
                                          'assets/images/gallery.png',
                                        ),
                                        height: 30,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 370,
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppbarfontsConstants(
                                      title: 'Add More  Images ',
                                      color: ColorConstants.fontGrayColor,
                                      fontSize: 16),
                                  IconButton(
                                      onPressed: () {
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Container(
                                                height: 150,
                                                width: double.infinity,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.camera_alt,
                                                            color:
                                                                ColorConstants
                                                                    .blackColor,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          GestureDetector(
                                                              onTap: () {
                                                                _pickImageFromcameraPersonalDetailsAddMorePicture();
                                                              },
                                                              child: AppbarfontsConstants(
                                                                  title:
                                                                      "Camera",
                                                                  color: ColorConstants
                                                                      .blackColor,
                                                                  fontSize: 18))
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/gallery.png",
                                                            height: 20,
                                                            width: 20,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          GestureDetector(
                                                              onTap: () {
                                                                _pickImageFromGalleryPersonalDetailsAddMorePicture();
                                                              },
                                                              child: AppbarfontsConstants(
                                                                  title:
                                                                      "Gallery",
                                                                  color: ColorConstants
                                                                      .blackColor,
                                                                  fontSize: 18))
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      icon: Image(
                                        image: AssetImage(
                                          'assets/images/gallery.png',
                                        ),
                                        color: ColorConstants.blackColor,
                                        height: 30,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 370,
                            height: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AppbarfontsConstants(
                                      title: 'Short Reel ',
                                      color: ColorConstants.fontGrayColor,
                                      fontSize: 16),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                          'assets/images/video-camera.png',
                                        ),
                                        color: ColorConstants.blackColor,
                                        height: 30,
                                      )),
                                ],
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
                              Navigator.pushNamed(context, '/jobStatus');
                            },
                          ),
                        ],
                      ),
                    ))
                   ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // image  picker from gallery
  Future _pickImageFromGalleryPersonalDetails() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  // image  picker from camera
  Future _pickImageFromcameraPersonalDetails() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

//add more camera section
  Future _pickImageFromcameraPersonalDetailsAddMorePicture() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  //add more gallery section
  Future _pickImageFromGalleryPersonalDetailsAddMorePicture() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}
