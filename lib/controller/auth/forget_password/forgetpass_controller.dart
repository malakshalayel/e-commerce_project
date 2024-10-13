import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassController extends GetxController{ 
       goToVerificationCode();
}

class ForgetPassControllerImp extends ForgetPassController{
         late TextEditingController emailController;
         GlobalKey<FormState> fromState =GlobalKey<FormState>();

  @override
  goToVerificationCode() {
    var fromData =fromState.currentState; 
    if(fromData!.validate()){ 
      Get.toNamed("/verifycode");
    }else { 
      print("not valid");
    }
  
  } 

  @override
  void onInit() {
    emailController=TextEditingController();
    
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

}