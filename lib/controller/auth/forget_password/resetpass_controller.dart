import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassController extends GetxController{ 
  goToSuccessReset();
  showPassword();
}

class ResetPassControllerImp extends ResetPassController{
  late TextEditingController passController;
  late TextEditingController repassController; 

  GlobalKey<FormState> fromState =GlobalKey<FormState>();

  @override
  goToSuccessReset() {

    var fromData =fromState.currentState;
    if(fromData!.validate() && passController.text == repassController.text ){
      Get.toNamed(AppRoute.successreset);
    }
    else{ 
      print("not valid");
    }
    
  
  }
   bool isShowPass = true ; 
   @override
  showPassword() {
     isShowPass=!isShowPass;
     update();
  }
  
  @override
  void onInit() {
    passController = TextEditingController();
    repassController=TextEditingController();
    
    super.onInit();
  }

 @override
  void dispose() {
    passController.dispose();
    repassController.dispose();
    
    super.dispose();
  }


}