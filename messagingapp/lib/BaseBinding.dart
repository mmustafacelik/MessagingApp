import 'package:get/get.dart';
import 'package:messagingapp/HomePage/HomePageController.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomePageController>(HomePageController());
  }
}
