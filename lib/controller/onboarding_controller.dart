import 'package:ecommerce_course/data/datasource/static.dart';
import 'package:ecommerce_course/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{ 
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnBoardingController {
    int currentPage=0;
late PageController pageController;
  @override
  next() {
    currentPage++;
    if(currentPage> onBoardingList.length -1){
      Get.offAllNamed("/login");
    }
    else {
          pageController.animateToPage(currentPage, duration : Duration(microseconds: 900), curve : Curves.easeInOut);

    }
  
    // TODO: implement next
    throw UnimplementedError();
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