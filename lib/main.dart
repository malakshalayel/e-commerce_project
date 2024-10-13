import 'package:ecommerce_course/binding/initlbinding.dart';
import 'package:ecommerce_course/core/localization/local.dart';
import 'package:ecommerce_course/core/localization/tarnslation.dart';
import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:ecommerce_course/routes.dart';
import 'package:ecommerce_course/testview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await initalServices();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller =Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.langauge,
      
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,
      
      initialBinding: InitialBinding(),
     getPages: routes,
    );
  }
}

