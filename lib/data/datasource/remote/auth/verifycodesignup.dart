import 'package:ecommerce_course/core/class/crud.dart';
import 'package:ecommerce_course/linkapi.dart';
import 'package:get/get.dart';

class VerifycodesignupData{ 
  Crud crud ;
  VerifycodesignupData(this.crud);

  postData(String email,String verifycode, )async{ 
   var responce =await crud.postData(AppLink.verifycodesignup, {
       "email" : email,
       "verifycode":verifycode
       

   });
   return responce.fold((l) => l, (r) => r);
  }
}