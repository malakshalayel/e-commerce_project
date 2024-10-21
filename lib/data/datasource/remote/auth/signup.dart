import 'package:ecommerce_course/core/class/crud.dart';
import 'package:ecommerce_course/linkapi.dart';
import 'package:get/get.dart';

class SignupData{ 
  Crud crud ;
  SignupData(this.crud);

  postData(String username, String password , String phone , String email )async{ 
   var responce =await crud.postData(AppLink.signup, {
       "username" : username,
       "password" : password ,
       "phone" : phone ,
       "email" : email,
       

   });
   return responce.fold((l) => l, (r) => r);
  }
}