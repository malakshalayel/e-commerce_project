import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{ 
 late TextEditingController emailController;
  late TextEditingController passwordController;

  login();
  goToSignUp();
  goToForgetpass();
  showPassword();
}

class LoginControllerImp extends LoginController{

  GlobalKey<FormState> formState = GlobalKey<FormState>(); 


  @override
  login() {
   var fromdata =formState.currentState; 
   if(fromdata!.validate()){ 
    print("valid");

   }
   else { 
    print("not valid");
   }
   
    
  } 
 bool isShowPass =true;
  @override
showPassword() {
    isShowPass = !isShowPass;
    update();
  }
  @override
  void onInit() {
    emailController=TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  
  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);
  
  }
  
  @override
  goToForgetpass() {
  Get.toNamed(AppRoute.forgetpass);
  }

}