import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class GetxBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CarouselController());
  }
}