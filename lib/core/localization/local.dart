import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:ecommerce_course/view/screen/transaltion.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleController extends GetxController{ 
  Locale? langauge;
  MyServices myServices =Get.find();


  changeLang (String codeLang){ 
    Locale local = Locale(codeLang);
    myServices.sharedPreferences.setString("lang", codeLang); 
    Get.updateLocale(local );

  }
  void onInit(){ 
    String?  sharedPrefLang= myServices.sharedPreferences.getString("lang");
    if( sharedPrefLang == "ar"){ 
      langauge =const Locale("ar");
    } else if(sharedPrefLang == "en"){ 
      langauge =const Locale("en");
    }else{ 
      langauge = Locale(Get.deviceLocale!.languageCode);
    }
  }
}