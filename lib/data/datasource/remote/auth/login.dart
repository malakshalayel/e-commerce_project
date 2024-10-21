import 'package:ecommerce_course/core/class/crud.dart';
import 'package:ecommerce_course/linkapi.dart';
import 'package:get/get.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);

  postData(String email, String password) async {
    print("email : ${email}");
    print("password : ${password}");
    var response = await crud.postData(AppLink.login, {
      "email": email,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
