  import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:ecommerce_course/data/model/signin.dart';
import 'package:ecommerce_course/view/screen/onboarding.dart';
import 'package:get/get.dart';

import '../model/onboarding.dart';
final String baseUrlImage="assets/images/";
List <OnBoarding> onBoardingList=[
  OnBoarding(title: "2".tr,
            image: "assets/images/onboardingone.PNG",
            details: "we have 100k Proudct , choose \n Your Proudct From Our \n E-commerce shope"
            ),

OnBoarding(
  title:"3".tr,
  image: "assets/images/onboardingtwo.PNG",
  details: "Esay checkout & safe Payment methode,\n Trusted by pur customer \n from all over the world"
  ),
  OnBoarding(
  title:"Track Your Order",
  image: "assets/images/onboardingthree.PNG",
  details: "we have 100k Proudct , choose \n Your Proudct From Our \n E-commerce shope "
  ),
  OnBoarding(
  title:"Fast Deleivry",
  image: "assets/images/onboardingfour.PNG",
  details: "we have 100k Proudct , choose \n Your Proudct From Our \n E-commerce shope "
  ),
            
];

List<SignInModel> signinList = [
      SignInModel(title: "Welcome Back" ,details: "Sign in with Your email and password\nor continue with social media"), 
      SignInModel(title: "Welcome Back" ,details: "Sign in with Your email and password\nor continue with social media"), 
 ]; 