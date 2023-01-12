import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/models/travel_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final Mydata = TravelModel.generatedMySourecList();
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 450.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${Mydata[index].img}'),
                      fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.only(top: 35.0, left: 25.0, right: 25.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Column(
                  children: [
                    Text(
                      'This is one of the most historical place in south asian country.This is one of the most historical place in south asian country.This is one of the most historical place in south asian country.This is one of the most historical place in south asian country.',
                      style: TextStyle(
                          fontSize: 16.0,
                          textBaseline: TextBaseline.alphabetic),
                      textAlign: TextAlign.justify,
                      maxLines: 4,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${Mydata[index].price}',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantity > 0 ? quantity-- : quantity;
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 250, 208, 192),
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '$quantity',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 250, 208, 192),
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 150.0),
                      child: Container(
                        width: 170.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(50.0)),
                        child: Center(
                            child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
