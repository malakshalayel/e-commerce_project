import 'package:ecommerce_course/controller/onboarding_controller.dart';
import 'package:ecommerce_course/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomsliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomsliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){ 
        controller.onPageChanged(val);
      },
                itemCount: onBoardingList.length,
                itemBuilder: (BuildContext context,int index )=> Column( 
                  children: [
                    Text( onBoardingList[index].title! , style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: 25,),
                    Image.asset(onBoardingList[index].image!, width: 300,height: 350,),
                    const SizedBox(height:60 ,),
                    Container(
                      alignment: Alignment.center,
                      child: Text(onBoardingList[index].details!, textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge)),
                      const SizedBox(height: 10,),
                    
                   ],
                ));
  }
}