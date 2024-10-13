import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:ecommerce_course/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{ 
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnBoardingController {
  MyServices myServices =Get.find();
    int currentPage=0;
late PageController pageController;
  @override
  next() async{
    currentPage++;
    if(currentPage > onBoardingList.length -1){

   await myServices.sharedPreferences.setBool("onboarding", true);

      Get.offAllNamed(AppRoute.login);
    }
    else {
          pageController.animateToPage(currentPage, duration : const Duration(microseconds: 900), curve : Curves.easeInOut);

    }
  
  
  }


  @override
  onPageChanged(int index) {
   currentPage=index;
   update();
  }
  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }
}