import 'package:get/get.dart';

class MainController extends GetxController {
  int tabIndex = 0;

  void changeTabIndex(int? index) async {
    tabIndex = index!;
    update();
  }

  void setDefaultTabIndex(int? index) {
    tabIndex = index!;
  }
}
