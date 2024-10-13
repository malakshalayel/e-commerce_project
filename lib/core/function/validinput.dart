import 'package:get/get.dart';

validInput(String val , int min , int max , String type){ 
  if(type== "username"){ 
    if(!GetUtils.isUsername(val)){
      return "not valid user name";
    }
  } 

  if(type== "email"){ 
    if(!GetUtils.isEmail(val)){
      return "not valid  email";
    }
  }

  if(type== "phone"){ 
    if(!GetUtils.isPhoneNumber(val)){
      return "not valid email";
    }
  }
if(val.isEmpty ){ 
    return "val cant be empty"; 
  }
  if(val.length < min ){ 
    return "val cant be less than $min"; 
  }

    if(val.length > max ){ 
    return "val cant be larger than $max"; 
  }
}