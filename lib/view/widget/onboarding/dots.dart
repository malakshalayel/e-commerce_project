import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotsBoarding extends StatelessWidget {
  const DotsBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<OnboardingControllerImp>( builder: (controller) =>Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ...List.generate( 
                 onBoardingList.length,
                 (index)=> AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  height: 6,
                  width: controller.currentPage==index ? 20 : 5,
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.primeryColor,
                  ),
                  duration: const Duration(milliseconds: 900))
                )
                ],
               ) );
  }
}