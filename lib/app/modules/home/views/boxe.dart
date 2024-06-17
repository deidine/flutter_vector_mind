import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Boxe extends StatelessWidget {
  Boxe({super.key, required this.title, required this.img});
  String title;
  String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          height: 50,
          child: Image.asset(img, fit: BoxFit.cover),
        ),
        Text(title)
      ],
    );
  }
}
