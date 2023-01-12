import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TravelModel {
  String img;
  String title;
  String country;
  String price;
  bool isClick;
  bool isSelect;
  String icontitle;
  IconData icon;
  TravelModel(this.img, this.title, this.country, this.price, this.isClick,
      this.isSelect, this.icontitle, this.icon);
  static List<TravelModel> generatedMySourecList() {
    return [
      TravelModel("images/img1.jpeg", "Season Highlights Historical Place.",
          "Historic", "\$84", true, false, 'Laser', Icons.headphones),
      TravelModel("images/img3.webp", "Southeast Asian country.", "Mountent",
          "\$160", false, false, 'Eco', Icons.image),
      TravelModel("images/img4.jpg", "Country in South Asia.", " Maldip",
          "\$75", true, false, 'Higer', Icons.e_mobiledata),
      TravelModel("images/img5.jpg", "Country in North America.", "America",
          "\$50", true, false, 'Bounce', Icons.dangerous),
      TravelModel("images/img6.png", "Country in Europe.", "Swizerland", "\$95",
          false, false, 'Lower', Icons.cabin_outlined),
      TravelModel("images/img7.jpg", "Country in Oceania.", "Newzeland", "\$34",
          true, false, 'Commerce', Icons.baby_changing_station),
      TravelModel("images/blog.jpg", "South Africa.", "Amazon", "\$170", false,
          true, 'Level', Icons.ac_unit),
    ];
  }
}
