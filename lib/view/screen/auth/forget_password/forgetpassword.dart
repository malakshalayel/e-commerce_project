import 'package:ecommerce_course/controller/auth/forget_password/checkemail_controller.dart';
import 'package:ecommerce_course/core/class/handlingdataview.dart';
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/view/widget/onboarding/auth/textfieldauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/function/validinput.dart';

class ForgetPassword extends StatelessWidget {
   

 const  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPassControllerImp());
    return Scaffold(
      appBar: AppBar( 
        leading: const Icon(Icons.arrow_back, color: AppColor.greyColor,),
        title: Text("14".tr, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),),
        centerTitle: true,

      ),
      body: GetBuilder<ForgetPassControllerImp>(builder: (controller) =>HandlingDataRequest(
        statusRequest: controller.statusRequest,
         widget: Container(
        padding:const EdgeInsets.symmetric(horizontal: 50,vertical: 25),
        child: Form(
          key: controller.formState,
          child: ListView( 
            
            children: [ 
          
              Text("27".tr,textAlign:TextAlign.center,style:  const TextStyle(fontSize: 30, ),), 
              Text("29".tr,textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14, ),),
              const SizedBox(height: 20,),
              
          
              TextFieldSignIN(

                isNumber: false,
                valid: (val){ 
                  return validInput(val!, 5, 100, "email");
                },
                myController:controller.emailController ,
                hinttext: "12".tr,
                labeltext: "18".tr,
                icon: const Icon(Icons.email_outlined, color: AppColor.greyColor,),
              
              ),
             
          
               const SizedBox(height: 50,),
          
          
               MaterialButton(onPressed: (){
                controller.goToVerificationCode();
               }, 
               textColor: Colors.white,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
               padding:const EdgeInsets.symmetric(vertical: 20),
               color: AppColor.primeryColor,
              //color: const Color.fromARGB(255, 248, 120, 120),
               child: Text("30".tr)), 
               const SizedBox(height: 10,),
             
          
            ]
          ),
        ),
      ))
      )
    );
  }
}