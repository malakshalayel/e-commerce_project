
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{ 
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeControllerImp extends VerifyCodeController{
  late String verification;

  @override
  checkCode() {

  }
  
  @override
  goToSuccessSignUp() {
    Get.toNamed("/resetpass");
    
  } 

        


}