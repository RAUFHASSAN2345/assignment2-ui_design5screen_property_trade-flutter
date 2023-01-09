import 'package:assignment/screens/profile.dart';
import 'package:flutter/material.dart';

class siginpage extends StatefulWidget {
  const siginpage({super.key});

  @override
  State<siginpage> createState() => _siginpageState();
}

class _siginpageState extends State<siginpage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  login() {
    if (email.text == 'email' && password.text == 'password') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => pofilescreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
            ),
            ClipOval(
              child: Image.asset(
                'assets/signinimage.jpg',
                height: 220,
                width: 220,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                'Login to Your Account',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 239, 237, 237),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromARGB(255, 239, 237, 237)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 239, 237, 237),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 239, 237, 237)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'Enter your Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      )),
                )),
            Padding(
              padding: EdgeInsets.only(top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                height: 65,
                width: MediaQuery.of(context).size.width * 0.95,
                child: OutlinedButton(
                  onPressed: () {
                    login();
                  },
                  child: Text(
                    'Sign in',
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
            ),
            Text(
              'Forgot the Password?',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7, right: 7),
                    child: Text(
                      'or Continue with',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 82,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70),
                  child: Image.asset('assets/facebooklogo.png'),
                ),
                SizedBox(width: 20),
                Container(
                  height: 82,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70),
                  child: Image.asset(
                    'assets/googlelogo.png',
                    cacheHeight: 50,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 82,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white70),
                  child: Image.asset(
                    'assets/applelogo.png',
                    cacheHeight: 50,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
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
      ),
    );
  }
}
