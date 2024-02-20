import 'package:flutter/material.dart';

import '../utils/Cart.dart';
import '../utils/Product.dart';

void main() {
  runApp(const Homescreen());
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 38, 10, 12),
                  height: height * 0.08,
                  width: width * 0.918,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 23,
                        backgroundImage: AssetImage('assets/images/me.jpg'),
                        foregroundImage: AssetImage('assets/images/me.jpg'),
                      ),

                      // here we have written the text of 👋 and AM
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '  Good Morning 👋',
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            'Aayush Maurya',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),

                      const SizedBox(
                        width: 70,
                      ),

                      const Icon(
                        Icons.notifications_none_outlined,
                        size: 26,
                        color: Colors.white,
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('/third');
                          });
                        },
                        child: Stack(
                          children: [
                            const Icon(
                              Icons.shopping_cart_outlined,
                              size: 26,
                              color: Colors.white,
                            ),
                            if (cart
                                .isNotEmpty) // Display count only if the cart is not empty
                              Positioned(
                                top: -5,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red, // Adjust color as needed
                                  ),
                                  child: Text(
                                    '${cart.length}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 11),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                  color: Color(0xFF1F222A),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.07,
                    width: width * 0.5,
                  ),
                  const Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Special Offers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: height * 0.35,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Container(
                            height: height * 0.25,
                            width: width * 0.5,
                            decoration: BoxDecoration(
                                color: Color(0xFF35383F),
                                borderRadius: BorderRadius.circular(30)),
                            child: Stack(
                              children: [
                                Image.asset('assets/Images/M1.png',
                                    fit: BoxFit.fitWidth),
                                Positioned(
                                  top: 10,
                                  right: 15,
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xFF17181A),
                                    radius: 13,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(4, 2, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Prayer Plant',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox.square(
                                dimension: 8,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_half,
                                    color: Colors.green,
                                  ),
                                  const SizedBox.square(
                                    dimension: 10,
                                  ),
                                  Text(
                                    '4.7   |',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox.square(
                                    dimension: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: height * 0.025,
                                    width: width * 0.19,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFF35383F),
                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                    child: Text(
                                      "5,567 sold",
                                      style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox.square(dimension: 8),
                              Text('\$29',
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: height * 0.35,
                    width: width * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.25,
                          width: width * 0.5,
                          decoration: BoxDecoration(
                              color: Color(0xFF35383F),
                              borderRadius: BorderRadius.circular(30)),
                          child: Stack(
                            children: [
                              Image.asset('assets/Images/P6.png',
                                  fit: BoxFit.fitWidth),
                              Positioned(
                                top: 10,
                                right: 15,
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xFF17181A),
                                  radius: 13,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(4, 2, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Zebra Arrow',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox.square(
                                dimension: 8,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_half,
                                    color: Colors.green,
                                  ),
                                  const SizedBox.square(
                                    dimension: 10,
                                  ),
                                  Text(
                                    '4.5   |',
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox.square(
                                    dimension: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: height * 0.025,
                                    width: width * 0.19,
                                    decoration: const BoxDecoration(
                                        color: Color(0xFF35383F),
                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                    child: Text(
                                      "5,295 sold",
                                      style: const TextStyle(
                                        color: Colors.green,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox.square(dimension: 8),
                              Text('\$39',
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  // Color(0xFF35383F)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'See All',
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              // color: Colors.blue,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.18,
                      decoration: BoxDecoration(
                          color:  Colors.green,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: const Color(0xFF35383F))),
                      child: Text(
                        'All',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.29,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color:  Colors.green, width: 2)),
                      child: Text('Monstera',
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: Colors.green, width: 2)),
                      child: Text(
                        'Aloe',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: Colors.green, width: 2)),
                      child: Text(
                        'Plam',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.29,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: Colors.green, width: 2)),
                      child: Text(
                        'Yucca',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color: Colors.green, width: 2)),
                      child: Text(
                        'Cactus',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      height: height * 0.045,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                          color: const Color(0xFF181A20),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          border: Border.all(
                              color:  Colors.green, width: 2)),
                      child: Text(
                        'Chinese',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    children: List.generate(
                        r1.length,
                        (index) => InkWell(
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/second', arguments: r1[index]);
                              },
                              child: Products(
                                context,
                                r1[index]['img'],
                                r1[index]['name'],
                                r1[index]['rate'],
                                r1[index]['sale'],
                                r1[index]['price'],
                              ),
                            )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r2.length,
                        (index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/second', arguments: r2[index]);
                              },
                              child: Products(
                                context,
                                r2[index]['img'],
                                r2[index]['name'],
                                r2[index]['rate'],
                                r2[index]['sale'],
                                r2[index]['price'],
                              ),
                            )))),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                // color: Colors.blue,
                child: Row(
                    children: List.generate(
                        r3.length,
                        (index) => GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/second', arguments: r3[index]);
                              },
                              child: Products(
                                context,
                                r3[index]['img'],
                                r3[index]['name'],
                                r3[index]['rate'],
                                r3[index]['sale'],
                                r3[index]['price'],
                              ),
                            )))),
          ],
        ),
      ),
    );
  }
}

Widget Products(
  BuildContext context,
  String img,
  String name,
  String rate,
  String sale,
  int price,
) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),

    // here is the single container.
    // color : Colors.yellow,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              height: height * 0.2,
              width: width * 0.425,
              decoration: const BoxDecoration(
                  color: Color(0xFF35383F),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Stack(
                children: [
                  Image.asset(img, fit: BoxFit.fitWidth),
                  Positioned(
                    top: 10,
                    right: 15,
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFF17181A),
                      radius: 13,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(4, 190, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox.square(
                    dimension: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_half_sharp,
                        color: Colors.green,
                      ),
                      const SizedBox.square(
                        dimension: 10,
                      ),
                      Text(
                        '$rate   |',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox.square(
                        dimension: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.025,
                        width: width * 0.19,
                        decoration: const BoxDecoration(
                            color: Color(0xFF35383F),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          sale,
                          style: const TextStyle(
                            color: Colors.green,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox.square(dimension: 8),
                  Text('\$$price',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget CategoriesBox(String text, Icon icons) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: const Color(0xFF35383F),
              radius: 28,
              child: icons),
          const SizedBox.square(dimension: 12),
          Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15)),
        ],
      ),
    );
