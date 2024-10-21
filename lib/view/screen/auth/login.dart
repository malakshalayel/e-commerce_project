import 'package:ecommerce_course/controller/auth/login_controller.dart';
import 'package:ecommerce_course/core/class/handlingdataview.dart';
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/core/constatnt/imageasset.dart';
import 'package:ecommerce_course/core/function/alertexitapp.dart';
import 'package:ecommerce_course/core/function/validinput.dart';
import 'package:ecommerce_course/view/widget/onboarding/auth/textfieldauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  
   

   const LoginPage({super.key });

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return PopScope(
      onPopInvokedWithResult: (bool didPop, Object? result)async{ 
       if(didPop){ 
        return ;
       }
       else{
        alertExitApp();
       }
      },
      
      child: Scaffold(
        appBar: AppBar( 
          leading: const Icon(Icons.arrow_back, color: AppColor.greyColor,),
          title: Text("9".tr  , style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),),
          centerTitle: true,
      
        ),
      
      
      
        body:  GetBuilder<LoginControllerImp>(builder: (controller)=> 
        HandlingDataRequest(statusRequest: controller.statusRequest,
         widget: Container(
        padding:const EdgeInsets.symmetric(horizontal: 50,vertical: 25),
        child: Form(
          key: controller.formState,
          child: ListView( 
            
            children: [ 
              Container(
               clipBehavior: Clip.antiAlias,
                height: 150,
                width: 200,
                decoration:const BoxDecoration(
                  color: Colors.amber, 
                 shape: BoxShape.circle,
                //  borderRadius: BorderRadius.all(Radius.circular(50))
                ),
                child: Image.asset(AppImageAsset.logoImage, height:50,)),
              Text("10".tr ,textAlign:TextAlign.center,style:  const TextStyle(fontSize: 30, ),), 
              Text("11".tr,textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14, ),),
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
             GetBuilder<LoginControllerImp>(builder: (controller)=>  TextFieldSignIN(
                obscureText:controller.isShowPass ,
                onTapicon:() => controller.showPassword(),
                isNumber: true,
                valid: (val){ 
                  return validInput(val!, 3, 20, "password");
                },
                myController: controller.passwordController,
                hinttext: "13".tr,
                labeltext: "19".tr,
                icon:const Icon(Icons.lock_open,color: AppColor.greyColor,),
              
              ),),
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
                controller.login();
               }, 
               textColor: Colors.white,
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
               padding:const EdgeInsets.symmetric(vertical: 20),
              color:   AppColor.primeryColor,
              //Color.fromARGB(255, 248, 120, 120),
               child: Text("9".tr)), 
               const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [ 
                   Text("16".tr,style: const TextStyle(color: AppColor.greyColor,)), 
                  InkWell( 
                    onTap: (){ 
                    controller.goToSignUp();
                    },
                    child: Text("17".tr, style: const TextStyle(
                      color: AppColor.primeryColor,
                     // color:  Color.fromARGB(255, 248, 120, 120)
                      
                      ),),
                  )
                ],
               )
          
            ]
          ),
        ),
              ))
        )
      ),
    );
  }
}

