import 'package:flutter/material.dart';

class SignUpPageScreen extends StatelessWidget {
  const SignUpPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
         padding: const EdgeInsets.all(15.0),
       // width: 500,
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
          child: Column(children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
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
                    labelText: 'Email',
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
                    labelText: 'Mobile',
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
                    labelText: 'Password',
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
                    labelText: 'Conform Password',
                    labelStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            CustomButtom(
              boxcolor: Colors.black,
              title: 'Register',
              ontap: () {
                  Navigator.pushNamed(context, '/personalDetails'); 
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtom(
              boxcolor: Color(0xFF4B164C),
              title: 'Social Media Login',
              ontap: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Text('Already Have an Account?'),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: (){
                       Navigator.pushNamed(context, '/loginup'); 
                    },
                    child: Text('Login ',
                        style: TextStyle(
                          color: Color(0xFF4B164C),
                        )),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}

class CustomButtom extends StatelessWidget {
  final Color boxcolor;
  final String title;
  final VoidCallback ontap;
  const CustomButtom({
    super.key,
    required this.boxcolor,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: boxcolor),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
