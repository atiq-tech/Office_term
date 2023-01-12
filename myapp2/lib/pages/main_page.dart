import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/different_items/search_option.dart';
import 'package:myapp2/models/travel_model.dart';
import 'package:myapp2/pages/cart_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Mydata = TravelModel.generatedMySourecList();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 243, 241, 241),
      body: Container(
        //color: Color.fromARGB(255, 121, 118, 118),
        padding:
            EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0, bottom: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchOption(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400.0,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CartPage()));
                      },
                      child: Container(
                        width: 240.0,
                        padding: EdgeInsets.only(
                          top: 5,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Mydata[index].img),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(25.0)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            IS_nock = index;
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 231, 228, 228),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Icon(
                                            Icons.favorite,
                                            color: IS_nock == index
                                                ? Color.fromARGB(255, 241, 4, 4)
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${Mydata[index].title}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w900),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "${Mydata[index].price}",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "${Mydata[index].country}",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 172, 168, 168),
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => SizedBox(
                    width: 20.0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            IS_selected = index;
                          });
                        },
                        child: Container(
                          width: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: IS_selected == index
                                ? Colors.white
                                : Color.fromARGB(255, 191, 230, 141),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Mydata[index].isSelect == true
                                    ? Color.fromARGB(255, 169, 243, 172)
                                    : Color.fromARGB(255, 247, 244, 244),
                                radius: 25.0,
                                child: Icon(
                                  Mydata[index].icon,
                                  color: Colors.black,
                                  size: 25.0,
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "${Mydata[index].icontitle}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (_, index) => SizedBox(
                          width: 20.0,
                        ),
                    itemCount: 6),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 85.0,
        padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            height: 70.0,
            color: Colors.white,
            child: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 60.0,
              items: <Widget>[
                Icon(Icons.home, size: 30),
                Icon(Icons.notification_add, size: 30),
                Icon(Icons.menu_book, size: 30),
                Icon(Icons.person, size: 30),
              ],
              color: Colors.white,
              buttonBackgroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 243, 241, 241),
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 600),
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
              letIndexChange: (index) => true,
            ),
          ),
        ),
      ),
    );
  }

  int IS_selected = 0;
  int IS_nock = 0;
}
