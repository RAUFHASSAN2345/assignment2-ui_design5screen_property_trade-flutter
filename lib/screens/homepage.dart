import 'package:assignment/screens/buy.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  functon(t, contcolr, texcolr, hight, widh) {
    return Container(
      height: hight,
      width: widh,
      decoration: BoxDecoration(
          color: contcolr, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          '$t',
          style: TextStyle(color: texcolr, fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 2, 28, 41),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => buypage()));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.people,
                    color: Colors.white,
                  ))
            ],
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 10, left: 30),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 57),
                      child: Text(
                        'Location',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Text(
                      'Los Angeles, CA',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 51, 75)),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/homei1.jpg',
                        width: MediaQuery.of(context).size.width * 0.14,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 28, top: 10, bottom: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 54),
                      child: Text(
                        'Discover Best',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 3, 51, 75)),
                      ),
                    ),
                    Text(
                      'Suitable Property',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 3, 51, 75)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              functon(
                  'House',
                  Color.fromARGB(255, 2, 28, 41),
                  Color.fromARGB(255, 215, 215, 215),
                  MediaQuery.of(context).size.height * 0.05,
                  MediaQuery.of(context).size.width * 0.2),
              functon(
                  'Apartement',
                  Color.fromARGB(255, 215, 215, 215),
                  Color.fromARGB(255, 2, 28, 41),
                  MediaQuery.of(context).size.height * 0.05,
                  MediaQuery.of(context).size.width * 0.3),
              functon(
                  'Flot',
                  Color.fromARGB(255, 215, 215, 215),
                  Color.fromARGB(255, 2, 28, 41),
                  MediaQuery.of(context).size.height * 0.05,
                  MediaQuery.of(context).size.width * 0.2)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, top: 30, bottom: 8),
            child: Row(
              children: [
                Text(
                  'Best for you',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 3, 51, 75)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.48,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 2, 28, 41)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => buypage()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    child: Image.asset(
                      'assets/houseimage.jpg',
                      width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.34,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 330, left: 25),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 174, bottom: 5),
                        child: Text(
                          'CRAFTSMAN HOUSE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 157),
                        child: Text(
                          '520 N Btoudry Ave Los Angeles',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, top: 20, bottom: 8),
            child: Row(
              children: [
                Text(
                  'Nearby your location',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 3, 51, 75)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 215, 215, 215)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/housei2.jpg',
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130, top: 25),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 165),
                        child: Text(
                          'Ranch Home',
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 51, 75),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 50),
                        child: Text(
                          '520 N Btoudry Ave Los Angeles',
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 51, 75),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.single_bed,
                            color: Colors.yellow,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
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
                            padding: EdgeInsets.only(right: 5),
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
                          Text(
                            '1 Garage',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
