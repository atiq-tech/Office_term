import 'package:flutter/material.dart';
import 'package:myapp2/models/travel_model.dart';

class SearchOption extends StatefulWidget {
  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  TextEditingController _searchBar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchBar,
      obscureText: true,
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        filled: true,
        focusColor: Colors.white,
        hintText: 'Search',
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.search,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
        hintStyle: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 0),
            borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
}
