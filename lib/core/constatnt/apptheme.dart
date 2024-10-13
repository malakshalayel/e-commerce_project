import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisblay",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.greyColor,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: AppColor.greyColor, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.greyColor,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: AppColor.greyColor, fontSize: 14)),
  primarySwatch: Colors.blue,
);