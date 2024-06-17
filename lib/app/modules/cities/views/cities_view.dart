import 'package:deidine/app/modules/cities/views/CitiesWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cities_controller.dart';

class CitiesView extends GetView<CitiesController> {
  const CitiesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [CityWidget(),
          CityWidget(),
          CityWidget(),
          CityWidget(),
          CityWidget(),
          ]
        ) 
      ),
    );
  }
}
