import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:ecommerce_course/data/datasource/static.dart';
import 'package:ecommerce_course/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_course/view/widget/onboarding/customslider.dart';
import 'package:ecommerce_course/view/widget/onboarding/dots.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


// ignore: camel_case_types
class OnBoardingClass extends GetView<OnboardingControllerImp>{
  const OnBoardingClass({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return  const SafeArea(
      child: Scaffold( 
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child:CustomsliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column( 
              children: [ 
             DotsBoarding(),
             SizedBox(height: 40,),
              CustomButton(),
              ],
            ))
            
              
          ],
        ),
      ),
    );
  }
}