import 'package:ecommerce_course/core/constatnt/constantColor.dart';
import 'package:ecommerce_course/core/constatnt/imageasset.dart';
import 'package:ecommerce_course/data/datasource/static.dart';
import 'package:ecommerce_course/view/widget/onboarding/auth/textfieldauth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   TextEditingController emailController=TextEditingController();
   TextEditingController passwordController=TextEditingController();

   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: Icon(Icons.arrow_back, color: AppColor.greyColor,),
        title: Text("Sign in", style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 25),),
        centerTitle: true,

      ),
      body:  Container(
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 25),
        child: ListView( 
          
          children: [ 
            Container(
             clipBehavior: Clip.antiAlias,
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.amber, 
               shape: BoxShape.circle,
              //  borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: Image.asset(AppImageAsset.logoImage, height: 100,)),
            Text(signinList[0].title! ,textAlign:TextAlign.center,style:  TextStyle(fontSize: 30, ),), 
            Text(signinList[0].details!,textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14, ),),
            SizedBox(height: 20,),
            

            TextFieldSignIN(
              myController:emailController ,
              hinttext: "Enter your email",
              labeltext: "Email",
              icon: Icon(Icons.email_outlined, color: AppColor.greyColor,),
            
            ),
            SizedBox(height: 20,),
            TextFieldSignIN(
              myController: passwordController,
              hinttext: "Enter your password",
              labeltext: "password",
              icon: Icon(Icons.lock_open,color: AppColor.greyColor,),
            
            ),
          SizedBox(height: 20,),
 
            Text("Forget Password",
            textDirection: TextDirection.rtl,
             style: Theme.of(context).textTheme.bodyLarge),

             SizedBox(height: 50,),
             MaterialButton(onPressed: (){}, 
             textColor: Colors.white,
             shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)),
             padding: EdgeInsets.symmetric(vertical: 20),
            color:  Color.fromARGB(255, 248, 120, 120),
             child: Text("Sign In")), 
             SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [ 
                Text("Dont Have An Account? ",style: TextStyle(color: AppColor.greyColor,)), 
                Ink( 
                  child: Text("Sign in", style: TextStyle(color:  Color.fromARGB(255, 248, 120, 120)),),
                )
              ],
             )
        
          ]
        ),
      )
    );
  }
}