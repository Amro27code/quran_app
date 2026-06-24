import 'package:flutter/material.dart';
import 'package:quran_app/app/widgets.dart';
import 'package:quran_app/controller/bnb_controller.dart';
import 'package:quran_app/core/color_manager.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Bnb> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backgroundGradiant(
        child: BnbController.screens[BnbController.index],
        colors: [
          ColorManager.primary,
          ColorManager.primary,
          ColorManager.backgroundSecondaryHome,
          ColorManager.backgroundSecondaryHome,
        ],
      ),
      bottomNavigationBar: BnbController.d(
        index: BnbController.index,
        onTap: (value) => setState(() => BnbController.index = value),
      ),
    );
  }
}

// body: _screens[index],
// bottomNavigationBar: BottomNavigationBar(
//   backgroundColor: ColorManager.backgroundBnb,
//   selectedItemColor: ColorManager.selectedItemBnb,
//   unselectedItemColor: ColorManager.whiteColor,
//   type: BottomNavigationBarType.fixed,
//   onTap: (value) => setState(() => index = value),
//   currentIndex: index,
//   showSelectedLabels: false,
//   showUnselectedLabels: false,
//   items: [
//     BottomNavigationBarItem(icon: Icon(Icons.menu_rounded), label: ""),
//     BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
//     BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
//     BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.settings_outlined),
//       label: "",
//     ),
//   ],
// ),
