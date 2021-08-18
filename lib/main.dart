import 'package:flutter/material.dart';
import 'package:foody_flutter/binding/main_binding.dart';
import 'package:foody_flutter/core/constants/app_constants.dart';
import 'package:foody_flutter/route/app_pages.dart';
import 'package:foody_flutter/route/app_routes.dart';
import 'package:foody_flutter/ui/main_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (AppConstants.RUNNING == Version.WAIT) await MainBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.INITIAL,
      defaultTransition: Transition.rightToLeft,
      getPages: AppPages.pages,
      home: MainPage(),
    );
  }
}
