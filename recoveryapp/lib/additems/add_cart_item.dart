import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/models/travel_model.dart';

class AddCartItem extends StatefulWidget {
  AddCartItem({super.key, this.index});
  int? index;
  @override
  State<AddCartItem> createState() => _AddCartItemState();
}

class _AddCartItemState extends State<AddCartItem> {
  final Mydata = TravelModel.generatedMySourecList();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'My Item Cart',
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  Container(
                    width: 200.0,
                    height: 150.0,
                    color: Colors.blue,
                  ),
                  Text('${Mydata[widget.index!].price}')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
