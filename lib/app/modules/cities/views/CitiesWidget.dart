import 'package:deidine/app/modules/cities/views/city_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Card(
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,  // Ensure child containers take full width
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,  // Fill all available width
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://avatars.githubusercontent.com/u/92623952?v=4",
                            ),
                            fit: BoxFit.cover,
                          ), 
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Patain City"),
                          Text("Buka 9:00 10:11"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: (){
                print("hi");
                Get.to(() => CityDetailView());
              },
      ),
    );
  }
}