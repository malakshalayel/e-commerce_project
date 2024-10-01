import 'package:ecommerce_course/view/screen/auth/login.dart';
import 'package:ecommerce_course/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes= { 
  "/login" :  (context)=>  LoginPage(),
  "/onboarding" : (context) =>const OnBoardingClass(),

};