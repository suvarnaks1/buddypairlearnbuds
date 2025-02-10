import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool showCurrentPassword = false;
  bool showNewPassword = false;
  bool showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B164C),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(

                    
                  ),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Image(
                              image: AssetImage('assets/images/Back.png')))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, left: 50),
                child: Text(
                  'Change Password',
                  style: GoogleFonts.aldrich(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: double.infinity,
                height: 5000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "Feeling worried about your account being easily preyed on? Then change that password now!",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 100),
                              child: TextField(
                                obscureText: !showCurrentPassword,
                                decoration: InputDecoration(
                                  labelText: 'Current Password',
                                  border: const UnderlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      showCurrentPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        showCurrentPassword =
                                        !showCurrentPassword;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 160),
                              child: TextField(
                                obscureText: !showNewPassword,
                                decoration: InputDecoration(
                                  labelText: 'New Password',
                                  border: const UnderlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      showNewPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        showNewPassword = !showNewPassword;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 210),
                              child: TextField(
                                obscureText: !showConfirmPassword,
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password',
                                  border: const UnderlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      showConfirmPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        showConfirmPassword =
                                        !showConfirmPassword;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 630, horizontal: 70),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF4A1B52),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text("Update",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

