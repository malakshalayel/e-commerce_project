import 'package:ecommerce_course/core/class/crud.dart';
import 'package:ecommerce_course/linkapi.dart';

class TestData{ 
  Crud crud;
  TestData(this.crud); 

 getData ()async{ 
  var responce = await crud.postData(AppLink.test, {}) ; 
  return responce.fold((l) => l, (r)=> r);
 }
}