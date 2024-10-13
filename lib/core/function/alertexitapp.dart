
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() { 
   Get.defaultDialog( 
title: "warning",
middleText: "did you neet exitd from app", 
actions: [ 
  ElevatedButton(onPressed: (){
    exit(0);
  },
   child: const Text("confirm")),

    ElevatedButton(onPressed: (){
    Get.back();
  },
   child: const Text("cancle"))
]
  );
  return Future.value(true);

}

  // Future<bool?> _showBackDialog(BuildContext context) {
  //   return showDialog<bool>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Are you sure?'),
  //         content: const Text(
  //           'Are you sure you want to leave this page?',
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             // style: TextButton.styleFrom(
  //             //   textStyle: Theme.of(context).textTheme.labelLarge,
  //             // ),
  //             child: const Text('Never mind'),
  //             onPressed: () {
  //               Navigator.pop(context, false);
  //             },
  //           ),
  //           TextButton(
  //             // style: TextButton.styleFrom(
  //             //   textStyle: Theme.of(context).textTheme.labelLarge,
  //             // ),
  //             child: const Text('Leave'),
  //             onPressed: () {
  //               Navigator.pop(context, true);
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }