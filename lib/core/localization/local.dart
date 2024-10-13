import 'package:ecommerce_course/core/constatnt/apptheme.dart';
import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{ 

  Locale? langauge;
  MyServices myServices =Get.find();
ThemeData appTheme = themeEnglish ;

  changeLang (String codeLang){ 
    Locale local = Locale(codeLang);
    myServices.sharedPreferences.setString("lang", codeLang); 
    Get.updateLocale(local );
    appTheme = codeLang == "ar" ? themeArabic : themeEnglish ;

  }
  @override
  void onInit(){ 
    String?  sharedPrefLang= myServices.sharedPreferences.getString("lang");
    if( sharedPrefLang == "ar"){ 
      langauge =const Locale("ar");
      appTheme =themeArabic;
    } else if(sharedPrefLang == "en"){ 
      langauge =const Locale("en");
      appTheme = themeEnglish;
    }else{ 
      langauge = Locale(Get.deviceLocale!.languageCode);
    }
  }
}