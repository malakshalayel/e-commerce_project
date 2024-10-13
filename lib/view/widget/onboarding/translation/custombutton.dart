import 'package:flutter/material.dart';

class CustomButtonLanguage extends StatelessWidget {
  final textButton;
  final void Function() onPressed;
  const CustomButtonLanguage({super.key, this.textButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   MaterialButton( onPressed: onPressed,
              color: Colors.amberAccent,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
              child: Text("$textButton", style: Theme.of(context).textTheme.bodyLarge,),);
  }
}