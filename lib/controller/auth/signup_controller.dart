import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{ 
 late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController userNameController;
  late TextEditingController phoneController;


  SignUp();
  goToSignIn();
  goToForgetpass();
  showPassword();
}

class SignUpControllerImp extends SignUpController{ 
  GlobalKey<FormState> formState =GlobalKey<FormState>();
  @override
  SignUp() {
    var formData = formState.currentState;
    if(formData!.validate()){ 
      Get.offNamed(AppRoute.verifycode);
      // signup to signin then signup save data and this problem use this code or lazyput in ui
     // Get.delete<SignUpControllerImp>();
     //route flutter make this problem if i use route getx  delete pages on memory automatic
    }
    else { 
      print("not valid");
    }
    
   
  }
bool showpass=true;
  @override
  showPassword() {
    showpass=!showpass;
    update();
  }
  @override
  void onInit() {
    userNameController =TextEditingController();
    phoneController=TextEditingController();
    emailController=TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  
  @override
  goToSignIn() {
    Get.toNamed(AppRoute.login);
    
  }

   @override
     goToForgetpass() {
  Get.toNamed(AppRoute.forgetpass);
  }

}