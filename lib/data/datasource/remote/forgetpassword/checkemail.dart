import 'package:ecommerce_course/core/class/crud.dart';
import 'package:ecommerce_course/linkapi.dart';
import 'package:get/get.dart';

class CheckEmailData{ 
  Crud crud ;
  CheckEmailData(this.crud);
  postData(String email,)async{ 
   print("post data");
    
   var responce =await crud.postData(AppLink.checkemail, {
       "email" : email,
   });
      print("after post data");

   return responce.fold((l) => l, (r) => r);
  }
}