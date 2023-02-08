import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    fontFamily: "Mulish",
    primaryColor: kPrimaryColor,
    textTheme: const TextTheme(bodyText1: TextStyle(color: kBlack, fontSize: 16, fontFamily: "Mulish"),
        bodyText2: TextStyle(color: kBlack, fontSize: 14, fontFamily: 'Mulish')
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),
    inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: kPrimaryColor,
            fontSize: 14, fontFamily: "Mulish", fontWeight: FontWeight.w600),
        hintStyle: TextStyle(color: Colors.grey,fontFamily:"Mulish" ,fontSize: 14, fontWeight: FontWeight.normal)
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: createMaterialColor(kPrimaryColor)
  );
}
MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}