import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';

class TextFieldSignIN extends StatelessWidget {
  String? labeltext;
  String? hinttext;
  Icon? icon;
  TextEditingController myController;
   TextFieldSignIN({super.key, this.hinttext, this.labeltext , this.icon, required this.myController});

  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      controller: myController,
     decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding:const EdgeInsets.symmetric(horizontal: 20),
      hintStyle:const TextStyle(fontSize: 14,color: AppColor.greyColor),
      labelStyle:const TextStyle(fontSize: 20),
       border:const OutlineInputBorder(
       borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(color: AppColor.greyColor)),
      labelText: labeltext ,
        hintText: hinttext,
        suffixIcon: icon,
      ),
    ) ;
  }
}