import 'package:flutter/material.dart';

class buypage extends StatefulWidget {
  const buypage({super.key});

  @override
  State<buypage> createState() => _buypageState();
}

class _buypageState extends State<buypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    'Detail',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 28, 41)),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.17,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 215, 215),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 2, 28, 41),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/houseimage.jpg',
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.36,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 5, right: 13),
                        child: Text(
                          'CRAFTSMAN HOUSE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 28, 41),
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        '520 N Btoudry Ave Los Angeles',
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 28, 41),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.single_bed,
                    color: Colors.yellow,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Text(
                      '4 Beds',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.bathtub,
                    color: Colors.yellow,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Text(
                      '4 Baths',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.car_repair,
                    color: Colors.yellow,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '1 Garage',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/ownerimage.jpg',
                        width: MediaQuery.of(context).size.width * 0.14,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 83),
                          child: Text(
                            'Jack',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 3, 51, 75)),
                          ),
                        ),
                        Text(
                          'Owner Craftsman House',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 2, 28, 41),
                          borderRadius: BorderRadius.circular(10)),
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          Text(
                            'Call',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Text(
                'Completely redone in 2021.4 bedrooms,1 garage,amazing curb oppeal and enterain areawater views,Tons of built-ins & extras. Read More...',
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 2, 28, 41)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Gallery',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 51, 75)),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/galleryi1.png',
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.19,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/galleryi2.jpg',
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.19,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/galleryi3.jpg',
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.19,
                    fit: BoxFit.fill,
                  ),
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/galleryi4.jpg',
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.19,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 22),
                      child: Text(
                        '+10',
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 25),
              child: Row(
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 51, 75)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    '\$5990000',
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 3, 51, 75),
                        fontWeight: FontWeight.w900),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 3, 51, 75)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 9, horizontal: 12)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
