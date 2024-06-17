import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  CarouselController controllerCars = CarouselController();
 var currentIndex = 0.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
void changeCarsol( String index){
// controllerCars.jumpToPage(val);
currentIndex.value = index == "1"? 1:0; 
}
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
