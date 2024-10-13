
import 'package:ecommerce_course/controller/auth/signup_controller.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/view/widget/onboarding/auth/textfieldauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/function/validinput.dart';


class SignUpPage extends StatelessWidget {
   

   const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>SignUpControllerImp());
    return Scaffold(
      appBar: AppBar( 
        title: Text("17".tr, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),),
        centerTitle: true,

      ),
      body:  GetBuilder<SignUpControllerImp>(builder: (controller){
        return Container(
        padding:const  EdgeInsets.symmetric(horizontal: 50,vertical: 25),
        child: Form(
          key: controller.formState,
          child: ListView( 
            
            children: [ 
          
              Text("10".tr ,textAlign:TextAlign.center,style:  const TextStyle(fontSize: 30, ),), 
              Text("24".tr,textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14, ),),
              const SizedBox(height: 20,),
              
               TextFieldSignIN( 
                isNumber: false,
                valid: (val){ 
                  return validInput(val!, 5, 100, "username");
                },
                myController:controller.userNameController ,
                hinttext: "23".tr,
                labeltext: "20".tr,
                icon: const Icon(Icons.person_2_outlined, color: AppColor.greyColor,),
              
              ),
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
            const SizedBox(height: 20,),
          
               TextFieldSignIN(
                isNumber: true,
                valid: (val){ 
                  return validInput(val!, 5, 100, "phone");
                },
                myController:controller.phoneController ,
                hinttext: "22".tr,
                labeltext: "21".tr,
                icon:const Icon(Icons.phone, color: AppColor.greyColor,),
              
              ),
              const SizedBox(height: 20,),
              TextFieldSignIN(
                obscureText: controller.showpass,
                onTapicon: controller.showPassword,
                isNumber: false,
                valid: (val){ 
                  return validInput(val!, 5, 100, "password");
                },
                myController: controller.passwordController,
                hinttext: "13".tr,
                labeltext: "19".tr,
                icon:const Icon(Icons.lock_open,color: AppColor.greyColor,),
              
              ),
           const SizedBox(height: 20,),
           
              InkWell(
                onTap: (){ 
                  controller.goToForgetpass();
                },
                child: Text("14".tr,
                textDirection: TextDirection.rtl,
                 style: Theme.of(context).textTheme.bodyLarge),
              ),
          
              const SizedBox(height: 50,),
               MaterialButton(onPressed: (){
                controller.SignUp();
               }, 
               textColor: Colors.white,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
               padding: const EdgeInsets.symmetric(vertical: 20),
               color: AppColor.primeryColor,
             // color: const Color.fromARGB(255, 248, 120, 120),
               child: Text("17".tr)), 
               const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [ 
                   Text("25".tr,style: const TextStyle(color: AppColor.greyColor,)), 
                  InkWell(
                     onTap: (){ 
                    controller.goToSignIn();
                     },
                    child:  Text("26".tr, style: const TextStyle(
                      color: AppColor.primeryColor,
                      //color:  Color.fromARGB(255, 248, 120, 120)
                      
                      ),),
                  )
                ],
               )
          
            ]
          ),
        ),
      );
      })
    );
  }
}