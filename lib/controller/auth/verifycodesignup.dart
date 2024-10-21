
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/core/function/handlingdatacontroller.dart';
import 'package:ecommerce_course/data/datasource/remote/auth/verifycodesignup.dart';
import 'package:get/get.dart';

abstract class VerifyCodesignupController extends GetxController{ 
  checkCode();
  goToSuccessSignUp(String verificationCode);
  StatusRequest? statusRequest;
  String ?email;
  List data =[];
}

class VerifyCodesignupControllerImp extends VerifyCodesignupController{

@override
  void onInit() {
    // Safely retrieve the email argument, provide a default value or handle null
    email = Get.arguments?["email"] ?? 'No email provided';
    super.onInit();
  }


  late String verification;
  VerifycodesignupData verifycodesignup =VerifycodesignupData(Get.find());

  @override
  checkCode() {

  }
  
  @override
  goToSuccessSignUp(verificationCode) async{

    statusRequest=StatusRequest.loading;
    update();
    try{

   var response = await verifycodesignup.postData( email!,verificationCode
    );
    //print("responce data as ${response['data']}");
   statusRequest = handlingData(response);
   print("status request after handling $statusRequest ");
   if(statusRequest == StatusRequest.success){ 
    //data.addAll(response['data']);
     Get.offNamed(AppRoute.successsignup);
    
  } else{ 
    Get.defaultDialog(title: "wearning", middleText: "verify code incorrect ");
  }

  }catch(error){ 
    print("errer here $error");
  } 
  update();
  }

    


}
