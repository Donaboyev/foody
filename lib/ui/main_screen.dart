import 'package:flutter/material.dart';
import 'package:foody_flutter/controller/main_controller.dart';
import 'package:foody_flutter/core/theme/app_colors.dart';
import 'package:foody_flutter/core/theme/app_text_styles.dart';
import 'package:foody_flutter/ui/favorite/favorites_screen.dart';
import 'package:foody_flutter/ui/joke/joke_screen.dart';
import 'package:foody_flutter/ui/recipes/recipes_screen.dart';
import 'package:get/get.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int tabIndex = 0;
    return GetBuilder<MainController>(
      initState: (state) {
        controller.setDefaultTabIndex(tabIndex);
      },
      builder: (mainController) {
        return Scaffold(
          body: IndexedStack(
            index: mainController.tabIndex,
            children: [
              RecipesPage(),
              FavoritesPage(),
              JokePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: clrDarkGray,
            selectedItemColor: clrAccent,
            onTap: mainController.changeTabIndex,
            currentIndex: mainController.tabIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: clrWhite,
            selectedLabelStyle: styBottomBarLabel,
            unselectedLabelStyle: styBottomBarLabel,
            elevation: 8,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                label: 'Recipes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.theater_comedy),
                label: 'Jokes',
              ),
            ],
          ),
        );
      },
    );
  }
}
