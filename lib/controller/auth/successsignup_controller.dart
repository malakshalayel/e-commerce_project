import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  goToSignIn();
}

class SuccessSignupControllerImp extends SuccessSignupController{
  @override
  goToSignIn() {
    Get.toNamed(AppRoute.successsignup);
  }


}