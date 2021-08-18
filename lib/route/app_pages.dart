import 'package:foody_flutter/binding/main_binding.dart';
import 'package:foody_flutter/route/app_routes.dart';
import 'package:foody_flutter/ui/main_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
  ];
}
