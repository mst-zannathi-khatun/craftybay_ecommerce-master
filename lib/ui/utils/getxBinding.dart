import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import '../state_controller/user_auth_controller.dart';

class GetxBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CarouselController());
    Get.put(UserAuthController());
  }
}