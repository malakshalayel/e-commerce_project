import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:flutter/material.dart';

class TextFieldSignIN extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final Icon icon;
  final String? Function(String?) valid ;
  final bool isNumber;
  final bool? obscureText;
  void Function()? onTapicon;
  TextEditingController myController;
   TextFieldSignIN({super.key,required this.hinttext,required this.labeltext ,required this.icon, required this.myController, required this.valid, required this.isNumber, this.obscureText , this.onTapicon});

  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      obscureText: obscureText== null || obscureText==false ?false : true,
      keyboardType: isNumber ?const TextInputType.numberWithOptions(decimal: true) : TextInputType.text ,
      validator: valid,
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
        suffixIcon: IconButton(onPressed: onTapicon, 
        icon: icon),
      ),
    ) ;
  }
}