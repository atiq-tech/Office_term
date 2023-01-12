import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/pages/main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/blog.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 720.0),
            child: Container(
              child: Text(
                '↩️Get Started↪️',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MainPage()));
        },
        child: Text(
          'Next',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
