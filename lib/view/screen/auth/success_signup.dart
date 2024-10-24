import 'package:ecommerce_course/controller/auth/successsignup_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupControllerImp controller =Get.put(SuccessSignupControllerImp());
    return  Scaffold (
      appBar: AppBar( 
        title: Text("37".tr, style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColor.greyColor),),
        centerTitle: true,
      ),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         child: Center(
           child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              const Icon(Icons.check_circle_outline, color: AppColor.primeryColor, size: 200,),
              Text("38".tr, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              const Spacer(),
              MaterialButton(onPressed: (){
                  controller.goToSignIn();
                 }, 
                 
                 textColor: Colors.white,
                 shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
                 padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 200),
                 color: AppColor.primeryColor,
               // color: const Color.fromARGB(255, 248, 120, 120),
                 child: Text("15".tr)), 
                 const SizedBox(height: 30,)
            ],
           ),
         ),
       )
    );
  }
}