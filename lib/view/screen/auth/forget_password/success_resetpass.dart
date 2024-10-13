import 'package:ecommerce_course/controller/auth/forget_password/successresetpass_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPass extends StatelessWidget {
  const SuccessResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetControllerImp controller =Get.put(SuccessResetControllerImp()); 
    return  Scaffold (
      appBar: AppBar( 
        title: Text("32".tr, style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColor.greyColor),),
        centerTitle: true,
      ),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         child: Center(
           child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              const Icon(Icons.check_circle_outline, color: AppColor.primeryColor, size: 200,),
              Text("36".tr, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
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
                 child: Text("17".tr)), 
                 const SizedBox(height: 30,)
            ],
           ),
         ),
       )
    );
  }
}