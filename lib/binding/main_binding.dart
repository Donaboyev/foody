import 'package:foody_flutter/controller/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync<MainController>(
      () async => MainController(),
    );
  }
}
