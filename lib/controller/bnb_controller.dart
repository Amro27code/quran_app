import 'package:flutter/material.dart';
import 'package:quran_app/core/other/color_manager.dart';
import 'package:quran_app/feature/home/screen/favorite_screen.dart';
import 'package:quran_app/feature/home/screen/home_screen.dart';

class BnbController {
 static int index = 1;
 static final List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    FavoriteScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  static BottomNavigationBar d({
    Color background = ColorManager.backgroundBnb,
    Color selectedColor = ColorManager.selectedItemBnb,
    Color unSelectedColor = ColorManager.whiteColor,
    BottomNavigationBarType type = .fixed,
    required int index,
    required Function(int) onTap,
  }) {
    return BottomNavigationBar(
      backgroundColor: background,
      selectedItemColor: selectedColor,
      unselectedItemColor: unSelectedColor,
      type: type,
      onTap: onTap,
      currentIndex: index,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        for (int i = 0; i < iconsBnb.length; i++)
          BottomNavigationBarItem(icon: iconsBnb[i], label: ""),
        // BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
        // BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
        // BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
        // BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: ""),
      ],
    );
  }
  static const List<Icon> iconsBnb = [
    Icon(Icons.menu_rounded),
    Icon(Icons.home_outlined),
    Icon(Icons.favorite_border),
    Icon(Icons.list),
    Icon(Icons.settings_outlined),
  ];
}
