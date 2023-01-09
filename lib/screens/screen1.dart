import 'package:assignment/screens/siginin.dart';
import 'package:flutter/material.dart';

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipOval(
            child: Image.asset(
              'assets/screen1 image.jpg',
              height: 220,
              width: 220,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 40),
            child: Text(
              "let's you in",
              style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/facebooklogo.png',
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "Continue with Facebook",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              height: 65,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/googlelogo.png',
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                  Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 65,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/applelogo.png',
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Text(
                  "Continue with Apple",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7, right: 7),
                  child: Text(
                    'or',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            height: 65,
            width: MediaQuery.of(context).size.width * 0.95,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => siginpage())));
              },
              child: Text(
                'Sign in with password',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 7, 73, 188)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  ' Sign up',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 20, 102, 244),
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
