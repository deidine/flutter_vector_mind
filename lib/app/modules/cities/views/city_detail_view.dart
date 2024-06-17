import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

class CityDetailView extends GetView {
  const CityDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://avatars.githubusercontent.com/u/92623952?v=4",
                ),
                fit: BoxFit.cover,
              ),
            ),
            height: 300,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Wiskata Kambug bojo"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.calendar_view_day_rounded, size: 15),
                            SizedBox(width: 5),
                            Text("Jam Buka \n 9:00 10:11"),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.calendar_view_day_rounded, size: 15),
                            SizedBox(width: 5),
                            Text("Jam Tutup \n 9:00 10:11")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.insert_comment, size: 15),
                            SizedBox(width: 5),
                            Text("Jam Tutup \n 9:00 10:11")
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.calendar_view_day_rounded, size: 15),
                            SizedBox(width: 5),
                            Text("Jam Tutup \n 9:00 10:11")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 10,
                    color: Colors.grey,
                    thickness: 4,
                  ),
// VerticalDivider(width: 12,color: Colors.grey,thickness: 4,),
                  Container(
                    child: Text("Wiskata Kambug bojo"),
                  ),
                  Flexible(
                    child: Container(
                      height: 400,
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "The ListView widget is used to display a list" +
                            "of items in a Flutter application. It provides properties" +
                            "to set the data source, builder, and layout of the list." +
                            "List views can be customized with the custom list item " +
                            "widgets and animation effects.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
