import 'package:flutter/material.dart';
import 'package:quran_app/core/other/font_manager.dart';
import 'package:quran_app/core/other/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "quran app",
      initialRoute: RouteNames.splashScreen,
      routes: RouteManager.routes,
      // darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(fontFamily: FontManager.orbitronName),
    );
  }
}
