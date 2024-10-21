import 'package:ecommerce_course/controller/test_controller.dart';
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/core/constatnt/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
 Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("Title"), 
      backgroundColor: AppColor.primeryColor,),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return   Center(child: Lottie.asset(AppImageAsset.loadingLottie));
        } else if (controller.statusRequest == StatusRequest.offlinefailuer) {
          return const Center(child: Text("Offline Failure"));
        } else if (controller.statusRequest == StatusRequest.serverfailuer) {
          return  Center(child: Lottie.asset(AppImageAsset.serverfailuerLottie, width: 250 , height: 250, renderCache: RenderCache.raster))  ;
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              });
        }
      }),
    );
  }
}