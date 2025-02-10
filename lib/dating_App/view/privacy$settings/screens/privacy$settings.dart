
import 'package:flutter/material.dart';

import '../../../../common/appbarfonts_constants.dart';
import '../../../../common/color_constants.dart';




class PrivacySettingsScreen extends StatefulWidget {
  const PrivacySettingsScreen({super.key});

  @override
  _PrivacySettingsScreenState createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  bool isTwoFAEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: ColorConstants.primaryColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ColorConstants.pinkColor,
                    shape: BoxShape.circle,

                  ),
                  child: Image.asset(
                    'assets/images/Search.png',
                    color: ColorConstants.whiteColor,
                  )),
              SizedBox(
                width: 30,
              ),
              AppbarfontsConstants(
                title: 'Privacy & Settings',
                color: ColorConstants.whiteColor,
                fontSize: 24,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: IconButton(
                  onPressed: () {},
                  icon: Image(
                      image: AssetImage(
                    "assets/images/Rectangle 1131.png",
                  ))),
            ),
            SizedBox(
              height: 30,
            ),
            _buildInfoTile("Sign-in Email", "johnsmith@gmail.com"),
            _buildChangePassword(),
            Divider(),
            _buildTwoFA(),
            _buildInfoTile("Phone number", "8986899989"),
            SizedBox(
              height: 10,
            ),
            Text(
              'Partner Preference',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const Spacer(),
            _buildResetSessionsButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(fontSize: 17, color: Colors.black)),
          Text(value,
              style: const TextStyle(fontSize: 17, color: Colors.black)),
        ],
      ),
    );
  }

  Widget _buildChangePassword() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Text("Password",
          style: TextStyle(fontSize: 17, color: Colors.black)),
      trailing: TextButton(
        onPressed: () {},
        child: const Text("Change password",
            style: TextStyle(color: Colors.blue, fontSize: 17)),
      ),
    );
  }

  Widget _buildTwoFA() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Text("2-FA authentication",
          style: TextStyle(fontSize: 16, color: Colors.black)),
      trailing: Switch(
        value: isTwoFAEnabled,
        onChanged: (value) {
          setState(() {
            isTwoFAEnabled = value;
          });
        },
        activeColor: ColorConstants.whiteColor,
        inactiveThumbColor: ColorConstants.whiteColor,
        inactiveTrackColor: ColorConstants.primaryColor,
        activeTrackColor: ColorConstants.primaryColor,
      ),
    );
  }

  Widget _buildResetSessionsButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 140, bottom: 10),
      child: Container(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstants.primaryColor,
            // Dark purple background
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          onPressed: () {
            // Handle reset session action
          },
          icon: const Icon(Icons.add, color: Colors.white), // "+" icon
          label: const Text(
            "Reset all active sessions",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}