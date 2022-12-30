import 'package:assignment/screens/homepage.dart';
import 'package:flutter/material.dart';

class pofilescreen extends StatefulWidget {
  const pofilescreen({super.key});

  @override
  State<pofilescreen> createState() => _pofilescreenState();
}

class _pofilescreenState extends State<pofilescreen> {
  profile(name) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 239, 237, 237),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 239, 237, 237)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: '$name',
          ),
        ));
  }

  profile2(name, icn) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 239, 237, 237),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    width: 1, color: Color.fromARGB(255, 239, 237, 237)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '$name',
              suffixIcon: icn),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Text(
                      'Fill Your Profile',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: ClipOval(
                  child: Image.asset(
                    'assets/profileimage.webp',
                    height: MediaQuery.of(context).size.height * 0.24,
                    width: MediaQuery.of(context).size.width * 0.52,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: profile('Full Name'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: profile('Nickname'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: profile2(
                    'Date of Birth',
                    Icon(
                      Icons.calendar_month,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: profile2(
                    'Email',
                    Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: profile2(
                    'Gender',
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.95,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => home())));
                  },
                  child: Text(
                    'Continue',
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
            ],
          ),
        ),
      ),
    );
  }
}
