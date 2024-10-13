import 'package:ecommerce_course/controller/auth/forget_password/resetpass_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/view/widget/onboarding/auth/textfieldauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/function/validinput.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassControllerImp controller = Get.put(ResetPassControllerImp());
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: AppColor.greyColor,
          ),
          title: Text(
            "35".tr,
            style:
                Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
          child: Form(
              key: controller.fromState,
              child: GetBuilder<ResetPassControllerImp>(
                builder: (controller) => ListView(children: [
                  Text(
                    "34".tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    " ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14,
                        ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldSignIN(
                    obscureText: controller.isShowPass,
                    onTapicon: controller.showPassword,
                    isNumber: true,
                    valid: (val) {
                      return validInput(val!, 5, 100, "password");
                    },
                    myController: controller.repassController,
                    hinttext: "35".tr,
                    labeltext: "19".tr,
                    icon: const Icon(
                      Icons.lock_outline,
                      color: AppColor.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldSignIN(
                    obscureText: controller.isShowPass,
                    onTapicon: controller.showPassword,
                    isNumber: true,
                    valid: (val) {
                      return validInput(val!, 5, 100, "password");
                    },
                    myController: controller.passController,
                    hinttext: "confirm your password",
                    labeltext: "19".tr,
                    icon: const Icon(
                      Icons.lock_outline,
                      color: AppColor.greyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                      onPressed: () {
                        controller.goToSuccessReset();
                      },
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      color: AppColor.primeryColor,
                      // color: const Color.fromARGB(255, 248, 120, 120),
                      child: Text("33".tr)),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
              )),
        ));
  }
}
