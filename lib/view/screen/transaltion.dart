
import 'package:ecommerce_course/core/localization/local.dart';
import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:ecommerce_course/view/widget/onboarding/translation/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Langauge extends GetView<LocaleController> {
  const Langauge({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      body:Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
             
          children: [ 
            Text("1".tr, style: Theme.of(context).textTheme.bodyLarge,),
             CustomButtonLanguage(onPressed: (){
                  controller.changeLang("ar");
                  Get.toNamed("/onboarding");
             }, 
             textButton: "Ar",
             
             ),
             const SizedBox(height: 10,),
         CustomButtonLanguage(onPressed: (){
          controller.changeLang("en");
          Get.toNamed("/onboarding");
         },
          textButton: "En",),

          ],
        ),
      ),

    );
  }
}