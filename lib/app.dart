

import 'package:app_bakery/constants/colors.dart';
import 'package:app_bakery/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bakery",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: HexColor(whiteColor),
        appBarTheme: AppBarTheme(
            elevation: 0,
            titleSpacing: -10,
            toolbarHeight: 40,
            backgroundColor: HexColor(primaryColor),
            titleTextStyle: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, height: 1.13)),
        fontFamily: 'Roboto',
        primaryColor: HexColor(primaryColor)
      ),
      
      home: const Dashboard(),
    );
  }
}
