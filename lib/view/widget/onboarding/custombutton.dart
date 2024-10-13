import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<OnboardingControllerImp> {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      onPressed: (){
        controller.next();
      },
               
               padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
               color: AppColor.primeryColor, 
               child:  Text("8".tr),
               );
  }
}