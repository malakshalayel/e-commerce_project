import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:get/get.dart';

abstract class SuccessResetController extends GetxController {
  goToSignIn();
}

class SuccessResetControllerImp extends SuccessResetController{
  @override
  goToSignIn() {
    Get.offAllNamed(AppRoute.login);
  }


}