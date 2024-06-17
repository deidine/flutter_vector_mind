import 'package:deidine/app/modules/home/views/CradCity.dart';
import 'package:deidine/app/modules/home/views/animal_card.dart';
import 'package:deidine/app/modules/home/views/boxe.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/92623952?v=4"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/92623952?v=4"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/92623952?v=4"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/92623952?v=4"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/92623952?v=4"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                onPageChanged: (val, index) {
                  print("new index $val");
                  controller.changeCarsol(index.toString());
                },
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                  () => DotsIndicator(
                    decorator: DotsDecorator(color: Colors.red),
                    dotsCount: 3,
                    position: controller.currentIndex.value.toInt(),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Wrap(
                    spacing: 10,
                    children: [
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      Boxe(title: "deidine", img: "images/cp_explore.png"),
                      //  Boxe(title: "deidine", img: "images/cp_explore.png"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
                  Text(
                    "Nearby",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
            CityCard(),
            CityCard(),
            CityCard(),
            CityCard(),
            CityCard(),
            CityCard(),
            CityCard(),
          ],
        ),

        //      GridView.builder(gridDelegate:
        // const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
        //  itemBuilder:  (context, index) =>
        //  AnimalCard(), itemCount: 4),
        //   ],
        // )
      ),
    );
  }
}
