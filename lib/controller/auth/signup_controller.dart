import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_course/data/datasource/remote/auth/signup.dart';
import 'package:ecommerce_course/view/screen/auth/signup_verifycode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController userNameController;
  late TextEditingController phoneController;
  StatusRequest statusRequest = StatusRequest.none;
  List data = [];

  SignUp();
  goToSignIn();
  goToForgetpass();
  showPassword();
}

class SignUpControllerImp extends SignUpController {
  SignupData signupData = SignupData(Get.find());

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  SignUp() async {
    try {
      var formData = formState.currentState;
      if (formData!.validate()) {
        statusRequest = StatusRequest.loading;
        update();

        var response = await signupData.postData(
            userNameController.text,
            passwordController.text,
            phoneController.text,
            emailController.text);
        print("responce data as ${response['data']}");
        statusRequest = handlingData(response);
        print("status request after handling $statusRequest ");
        if (statusRequest == StatusRequest.success) {
          // data.addAll(response['data']);
          Get.toNamed(AppRoute.verifyCodeSignup,
              arguments: {"email": emailController.text});
        } else {
          Get.defaultDialog(
              title: "warning",
              middleText: "phone number or email already exit");
        }

        // signup to signin then signup save data and this problem use this code or lazyput in ui
        // Get.delete<SignUpControllerImp>();
        //route flutter make this problem if i use route getx  delete pages on memory automatic
      } else {
        print("not valid");
      }
    } catch (error) {
      print("error hereeeee $error");
    }
  }

  bool showpass = true;
  @override
  showPassword() {
    showpass = !showpass;
    update();
  }

  @override
  void onInit() {
    userNameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
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
