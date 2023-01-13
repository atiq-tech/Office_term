import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/different_items/search_option.dart';
import 'package:myapp2/models/travel_model.dart';
import 'package:myapp2/recover_pages/cart_item_page.dart';
import 'package:myapp2/recover_pages/grid_menu_page.dart';
import 'package:myapp2/recover_pages/main_item_page.dart';
import 'package:myapp2/recover_pages/person_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List pages = [MainItemPage(), CartItemPage(), GridMenuPage(), PersonPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 80.0,
        padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          //color: Colors.red,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 26, 3, 230),
            selectedItemColor: Colors.black87,
            unselectedItemColor: Color.fromARGB(153, 0, 0, 0),
            selectedFontSize: 14,
            unselectedFontSize: 10,
            showUnselectedLabels: false,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 201, 199, 199),
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: "Menu",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person",
              )
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => CartHome1(
                //           index: index,
                //         )));
              });
            },
          ),
        ),
      ),
    );
  }
}
