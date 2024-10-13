import 'package:ecommerce_course/core/constatnt/pageroutes.dart';
import 'package:ecommerce_course/testview.dart';
import 'package:ecommerce_course/view/screen/auth/forget_password/forgetpassword.dart';
import 'package:ecommerce_course/view/screen/auth/success_signup.dart';
import 'package:ecommerce_course/view/screen/auth/login.dart';
import 'package:ecommerce_course/view/screen/auth/forget_password/resetpass.dart';
import 'package:ecommerce_course/view/screen/auth/signup.dart';
import 'package:ecommerce_course/view/screen/auth/forget_password/success_resetpass.dart';
import 'package:ecommerce_course/view/screen/auth/forget_password/verifycode.dart';
import 'package:ecommerce_course/view/screen/onboarding.dart';
import 'package:get/get.dart';


List<GetPage<dynamic>>? routes= [
  GetPage(name: "/", page: ()=> const TestView()),
//GetPage(name: "/", page: () =>const Langauge(),middlewares: [MiddleWareAuth()]), 
GetPage(name: AppRoute.onboarding , page: () =>const OnBoardingClass(),), 
GetPage(name: AppRoute.login , page: () => const LoginPage(),), 
GetPage(name: AppRoute.signup , page: () => const SignUpPage(),), 
GetPage(name: AppRoute.forgetpass , page: () =>const ForgetPassword(),), 
GetPage(name: AppRoute.resetpass , page: () =>const ResetPass(),), 
GetPage(name: AppRoute.successreset , page: () =>const SuccessResetPass(),), 
GetPage(name: AppRoute.verifycode , page: () =>const VerifyCode(),), 
GetPage(name: AppRoute.successsignup , page: () => const SuccessSignUp(),), 


];

