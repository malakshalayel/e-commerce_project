import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/core/localization/local.dart';
import 'package:ecommerce_course/core/localization/tarnslation.dart';
import 'package:ecommerce_course/view/screen/transaltion.dart';
import 'package:ecommerce_course/core/servicvs/services.dart';
import 'package:ecommerce_course/routes.dart';
import 'package:ecommerce_course/view/screen/onboarding.dart';
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
      theme: ThemeData(
        fontFamily: "PlayfairDisblay",
       textTheme: const TextTheme(
        headlineSmall: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          bodyLarge: TextStyle(height: 2 , color: AppColor.greyColor, fontWeight:FontWeight.w800 ),  // Customize font styles
          
        ),
      ),
      routes: routes,
      home:  const Langauge(),
    );
  }
}

