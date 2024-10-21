
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_course/data/datasource/remote/forgetpassword/verifycode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{ 

  goToResetpass(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController{
  late String verification;

  String? email;
  StatusRequest statusRequest= StatusRequest.none;
  VerifyCodeData verifyCode =VerifyCodeData(Get.find());
  GlobalKey<FormState> formState= GlobalKey<FormState>();

 
  
  @override
  goToResetpass(verifycode)async {

    
   statusRequest=StatusRequest.loading;
    update();
    try{

   var response = await verifyCode.postData( email!,verifycode
    );
    print("responce data as ${response['data']}");
   statusRequest = handlingData(response);
   print("status request after handling $statusRequest ");
   if(statusRequest == StatusRequest.success){ 
    //data.addAll(response['data']);
     Get.offNamed(AppRoute.resetpass , 
     arguments: {
      'email' :email
     });
    
  } else{ 
    Get.defaultDialog(title: "wearning", middleText: "verify code incorrect ");
  }

  }catch(error){ 
    print("errer here $error");
  } 
  update();
      
  } 
@override
  void onInit() {
    // email = Get.arguments['email'];
     if (Get.arguments != null && Get.arguments['email'] != null) {
    email = Get.arguments['email'];
  } else {
    // Handle the case where email is null, for example:
    Get.defaultDialog(title: "Error", middleText: "Email not provided");
  }

 super.onInit();
  }
        


}