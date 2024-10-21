import 'package:ecommerce_course/core/class/crud.dart';
import 'package:ecommerce_course/linkapi.dart';
import 'package:get/get.dart';

class ResetPasswordData{ 
  Crud crud ;
  ResetPasswordData(this.crud);

  postData(String email, String password)async{ 
   var responce =await crud.postData(AppLink.resetpass, {
       "email" : email,
       "password" : password
   });
   return responce.fold((l) => l, (r) => r);
  }
}