import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_course/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassController extends GetxController {
  goToVerificationCode();
}

class ForgetPassControllerImp extends ForgetPassController {
  late TextEditingController emailController;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  StatusRequest statusRequest = StatusRequest.none;
  CheckEmailData checkEmail = CheckEmailData(Get.find());

  @override
  goToVerificationCode() async {
    var formData = formState.currentState;
      if (formData!.validate()) {
    statusRequest = StatusRequest.loading;
    update();
    try {
      var response = await checkEmail.postData(
        emailController.text,
      );
      //print("responce data as ${response['data']}");
      statusRequest = handlingData(response);
      print("status request after handling $statusRequest");
      if (statusRequest == StatusRequest.success) {
        //data.addAll(response['data']);
        Get.offNamed(AppRoute.verifycode,
            arguments: {"email": emailController.text});
      } else {
        Get.defaultDialog(title: "wearning", middleText: "Email not found");
      }
    } catch (error) {
      print("errer here $error");
    }
    update();
  }
  }

  @override
  void onInit() {
    emailController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
