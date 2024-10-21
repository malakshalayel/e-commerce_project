import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/constatnt/imageasset.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView({super.key , required this.statusRequest , required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest ==StatusRequest.loading 
    ?Center(child: Lottie.asset(AppImageAsset.loadingLottie , width: 240 , height: 250),)
    :statusRequest ==StatusRequest.serverfailuer 
        ?Center(child: Lottie.asset(AppImageAsset.serverfailuerLottie , width: 240 , height: 250),)
        :statusRequest ==StatusRequest.offlinefailuer 
            ?Center(child: Lottie.asset(AppImageAsset.serverfailuerLottie , width: 240 , height: 250),)
            :statusRequest ==StatusRequest.failuer
                 ?Center(child: Lottie.asset(AppImageAsset.serverfailuerLottie , width: 240 , height: 250),)
                 :widget;
                 
    
  }
}

class HandlingDataRequest extends StatelessWidget {
 final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loadingLottie, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailuer
            ? Center(
                child: Lottie.asset(AppImageAsset.failuerLottie,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailuer
                ? Center(
                    child: Lottie.asset(AppImageAsset.serverfailuerLottie,
                        width: 250, height: 250))
                : widget;
                 
    
  }
}