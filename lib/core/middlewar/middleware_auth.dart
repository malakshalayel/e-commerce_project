import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddleWareAuth extends GetMiddleware{ 

  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect (String? route){ 
    print("on boarding ?  ${myServices.sharedPreferences.getBool("onboarding")}");
    if(myServices.sharedPreferences.getBool("onboarding") == true){ 
      return const RouteSettings(name: AppRoute.login);
    }
    return null;
  }

}