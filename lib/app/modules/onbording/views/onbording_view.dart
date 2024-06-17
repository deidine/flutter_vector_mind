import 'package:deidine/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/onbording_controller.dart';

class OnbordingView extends GetView<OnbordingController> {
  const OnbordingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy your holiday with",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Visit",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.CITIES);
                    },
                    child: Text("our citys",
                        style: TextStyle(
                          fontSize: 30,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Keep you travell very comfortable, easy and explorer the buton.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                Get.toNamed(Routes.HOME);
              }, child: Text("Explore")),
              Expanded(
                
                child: Container(
                  margin: EdgeInsets.only(top: 50,bottom: 10),
                  child: Image.asset("images/cp_explore.png",
               
               ),
                  ))
            ],
          )),
    );
  }
}
