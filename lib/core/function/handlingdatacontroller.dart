
import 'package:ecommerce_course/core/class/statusrequest.dart';

StatusRequest handlingData (response){ 
 if (response is StatusRequest){ 
  print("responce is status request");
  if(response == StatusRequest.offlinefailuer){
    return StatusRequest.offlinefailuer;
  }else{ 
    return StatusRequest.serverfailuer;
  }
 }else{ 

  return StatusRequest.success ;
 }
}