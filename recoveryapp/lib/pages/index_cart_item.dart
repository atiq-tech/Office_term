import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/additems/add_cart_item.dart';
import 'package:myapp2/models/travel_model.dart';

class IndexCartItem extends StatefulWidget {
  IndexCartItem({super.key, this.index});
  int? index;
  @override
  State<IndexCartItem> createState() => _IndexCartItemState();
}

class _IndexCartItemState extends State<IndexCartItem> {
  final Mydata = TravelModel.generatedMySourecList();
  int quantity = 1;
  int index = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Cart Category',
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 340.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('${Mydata[widget.index!].img}'),
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
                '${Mydata[widget.index!].description}',
                style: TextStyle(
                    fontSize: 16.0, textBaseline: TextBaseline.alphabetic),
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
                    '${Mydata[widget.index!].price}',
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
                        quantity.toString().padLeft(2, '0'),
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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddCartItem(
                                index: index,
                              )));
                    });
                  },
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
              ),
            ],
          ),
        ),
      ),
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
