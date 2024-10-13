import 'package:ecommerce_course/controller/auth/forget_password/verifyCode_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
class VerifyCode extends StatelessWidget {
   

 const  VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar( 
        leading: const Icon(Icons.arrow_back, color: AppColor.greyColor,),
        title: Text("Verification Code", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),),
        centerTitle: true,

      ),
      body:  Container(
        padding:const EdgeInsets.symmetric(horizontal: 50,vertical: 25),
        child: ListView( 
          
          children: [ 
        
            Text("27".tr,textAlign:TextAlign.center,style:  const TextStyle(fontSize: 30, ),), 
            Text("29".tr,textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14, ),),
            const SizedBox(height: 20,),
             OtpTextField(
              borderRadius: BorderRadius.circular(15),
        numberOfFields: 4,
        borderColor: AppColor.primeryColor,
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
           controller.goToSuccessSignUp();
        }, // end onSubmit
    ),
            
        
           
           

            


           
           
        
          ]
        ),
      )
    );
  }
}