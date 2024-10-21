import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_course/data/datasource/remote/forgetpassword/resetpass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassController extends GetxController {
  goToSuccessReset();
  showPassword();
}

class ResetPassControllerImp extends ResetPassController {
  late TextEditingController passController;
  late TextEditingController repassController;
  StatusRequest statusRequest = StatusRequest.none;
  ResetPasswordData resetPassword = ResetPasswordData(Get.find());
  String? email;

  GlobalKey<FormState> fromState = GlobalKey<FormState>();

  @override
  goToSuccessReset() async {
  var formData = fromState.currentState;
      if (formData!.validate()) {
    if (passController.text != repassController.text) {
      return Get.defaultDialog(
          title: "warning", middleText: "password not Match");
    }

    statusRequest = StatusRequest.loading;
    update();
    try {
      var response = await resetPassword.postData( email!,passController.text,);
      //print("responce data as ${response['data']}");
      statusRequest = handlingData(response);
      print("status request after handling $statusRequest ");
      if (statusRequest == StatusRequest.success) {
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.successreset);
      } else {
        Get.defaultDialog(title: "wearning", middleText: "Try again");
      }
    } catch (error) {
      print("errer here $error");
    }
    update();
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
    passController = TextEditingController();
    repassController = TextEditingController();
       // email = Get.arguments['email'];
try{
     if (Get.arguments != null && Get.arguments['email'] != null) {
    email = Get.arguments['email'];
  } else {
    // Handle the case where email is null, for example:
    Get.defaultDialog(title: "Error", middleText: "Email not provided");
  } }catch(error){
    print("${error}");
  }

    super.onInit();
  }

  @override
  void dispose() {
    passController.dispose();
    repassController.dispose();

    super.dispose();
  }
}
