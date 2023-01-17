import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                width: double.infinity,
                padding: EdgeInsets.only(top: 10.0),
                color: Color.fromARGB(255, 36, 43, 59),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.menu,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset('images/logobig.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        children: [
                          Center(
                            child: Badge(
                              badgeColor: Color.fromARGB(255, 38, 0, 255),
                              animationDuration: Duration(milliseconds: 300),
                              badgeContent: Text(
                                "0",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 54, 238, 244)),
                              ),
                              child: Icon(
                                Icons.shopping_cart_checkout_outlined,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            'Cart',
                            style: TextStyle(
                                color: Color.fromARGB(255, 175, 172, 172),
                                fontSize: 10.0,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.search,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ),
              Container(
                height: 280.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    //color: Color.fromARGB(255, 221, 226, 236),
                    image: DecorationImage(
                        image: AssetImage('images/mens.png'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                child: Text(
                  'Explore Categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                height: 300.0,
                width: double.infinity,
                // color: Color.fromARGB(255, 36, 43, 59),
                child: GridView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.0,
                        crossAxisSpacing: 15.0,
                        childAspectRatio: 4 / 4),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            border: Border.all(color: Colors.blue)),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 184, 196, 221),
                                    image: DecorationImage(
                                        image: AssetImage('images/mens.png'),
                                        fit: BoxFit.cover),
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 44, 107, 231),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Mens',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  )),
                                )),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Discount',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                //color: Color.fromARGB(255, 172, 10, 187),
                child: Image.asset('images/discount.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Deal Products',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 25.0,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        border: Border.all(color: Colors.blue)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 14.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300.0,
                padding: EdgeInsets.only(
                    top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/mens.png'),
                                        fit: BoxFit.fitHeight),
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(15.0)),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10,
                                        left: 10.0,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child: Container(
                                              height: 20.0,
                                              width: 80.0,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 253, 31, 24),
                                                borderRadius:
                                                    BorderRadius.circular(3.0),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                'Out of Stock',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0),
                                              ))),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {});
                                          },
                                          child: Container(
                                              height: 20.0,
                                              width: 60.0,
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 35, 11, 255),
                                                borderRadius:
                                                    BorderRadius.circular(3.0),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '30.00%',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14.0),
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 27, 27, 27),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(15.0)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Text(
                                          'Men`s Pandeing Jacket',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: Text(
                                          'Code:P00005',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '\$1260.00 ',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 221, 90, 73),
                                                  fontSize: 14.0),
                                            ),
                                            Text(
                                              ' \$1800.00',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Color.fromARGB(
                                                      255, 221, 90, 73),
                                                  fontSize: 14.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 18.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 25.0,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                  border: Border.all(
                                                      color: Colors.red)),
                                              child: Center(
                                                child: Text(
                                                  'Buy Now',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 211, 72, 7),
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Container(
                                              height: 25.0,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                  border: Border.all(
                                                      color: Colors.blue)),
                                              child: Center(
                                                child: Text(
                                                  'Add Cart',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (_, index) => SizedBox(width: 15.0),
                    itemCount: 6),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Brands',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 100.0,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/kappa.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/zara.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/maine.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/redtape.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Products',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 25.0,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        border: Border.all(color: Colors.blue)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 14.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300.0,
                  padding: EdgeInsets.only(
                      top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      //physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15.0,
                          crossAxisSpacing: 15.0,
                          childAspectRatio: 4 / 7),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 220.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('images/cat2.jpg'),
                                          fit: BoxFit.cover),
                                      //color: Colors.pink,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0)),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {});
                                            },
                                            child: Container(
                                                height: 20.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 35, 11, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '30.00%',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.0),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 27, 27, 27),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            'Men`s Pandeing Jacket',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'Code:P00005',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '\$1260.00 ',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                              Text(
                                                ' \$1800.00',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.red)),
                                                child: Center(
                                                  child: Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 211, 72, 7),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue)),
                                                child: Center(
                                                  child: Text(
                                                    'Add Cart',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival Products',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 25.0,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        border: Border.all(color: Colors.blue)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 14.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300.0,
                  padding: EdgeInsets.only(
                      top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      //physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15.0,
                          crossAxisSpacing: 15.0,
                          childAspectRatio: 4 / 7),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 220.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('images/cat5.jpg'),
                                          fit: BoxFit.cover),
                                      //color: Colors.pink,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0)),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {});
                                            },
                                            child: Container(
                                                height: 20.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 35, 11, 255),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '30.00%',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.0),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 27, 27, 27),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            'Men`s Pandeing Jacket',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'Code:P00005',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '\$1260.00 ',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                              Text(
                                                ' \$1800.00',
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.red)),
                                                child: Center(
                                                  child: Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 211, 72, 7),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue)),
                                                child: Center(
                                                  child: Text(
                                                    'Add Cart',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photo Gallery',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    height: 25.0,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        border: Border.all(color: Colors.blue)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blue,
                          size: 14.0,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.white,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 300.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/cat2.jpg'),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
