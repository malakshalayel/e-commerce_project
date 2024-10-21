import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_course/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';

abstract class LoginController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  login();
  goToSignUp();
  goToForgetpass();
  showPassword();
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  @override
  login() async {
    try {
      var formData = formState.currentState;
      if (formData!.validate()) {
        statusRequest = StatusRequest.loading;
        update();

        var response = await loginData.postData(
          emailController.text,
          passwordController.text,
        );

        print("emailController.text: ${emailController.text}");
        print("passwordController.text: ${passwordController.text}");

        if (response != null) {
          print("response data before request: $response");

          // Check if response is a Map
          if (response is Map<String, dynamic>) {
            statusRequest = handlingData(response);
            print("after request");

            if (statusRequest == StatusRequest.success) {
              print("success");
              Get.offAllNamed(AppRoute.homePage);
            } 
               else if (statusRequest == StatusRequest.serverfailuer) {
            statusRequest = StatusRequest.serverfailuer;
            update();
            print("else 2");
            Get.defaultDialog(
                title: "Error", middleText: "Unexpected response format.");
          }
          else {
            print("else 3");
            statusRequest = StatusRequest.failuer;
            update();
            Get.defaultDialog(
                title: "Error", middleText: "email or password incorrect.");
          }
          }
       
        }
      }
    } catch (error) {
      print("Error occurred: $error");
      Get.defaultDialog(
          title: "Error", middleText: "An unexpected error occurred.");
      Get.toNamed(AppRoute.login);
    }
  }

  bool isShowPass = true;
  @override
  showPassword() {
    isShowPass = !isShowPass;
    update();
  }

  @override
  void onInit() {
    emailController = TextEditingController();
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
