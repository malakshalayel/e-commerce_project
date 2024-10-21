import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;

// class Crud {
//   Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
//     try {
//       if (await checkInternet()) {
//         var response = await http.post(Uri.parse(linkurl), body: jsonEncode(data));
//         if (response.statusCode == 200 || response.statusCode == 201) {
//           Map responsebody = jsonDecode(response.body);
//           print("dataaa ${response.body}");
//           return Right(responsebody);
//         } else {
//           return const Left(StatusRequest.serverfailuer);
//         }
//       } else {
//         return const Left(StatusRequest.offlinefailuer);
//       }
//     } catch (error) {
//       print("error isss $error");
//       return const Left(StatusRequest.serverfailuer);
//     }
//   }
// }

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      print("URL: $linkurl");
      print("Data: ${data.values}");
      

      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkurl),
          //  headers: {"Content-Type": "application/json"}, // Uncomment if needed
          body: jsonEncode(data),
        );

        print('Response status: ${response.statusCode}');
        print('Raw response body: ${response.body}');
        print('Content-Type: ${response.headers['content-type']}');


        // Check if the response is JSON
        if (response.headers['content-type']?.contains('application/json') ?? false) {
          try {
            Map responseBody = jsonDecode(response.body);

            print("bbbbbbbbbbbbbbbbbbbbbbbbbb ${responseBody}");
            return Right(responseBody);
          } catch (e) {
            print('Error decoding JSON: $e');
            return const Left(StatusRequest.serverfailuer);
          }
        } else if (response.headers['content-type']?.contains('text/html') ?? false) {
          // If the response is HTML, print the HTML content to debug
          print('Error: Server returned HTML content. Response body: ${response.body}');
          return const Left(StatusRequest.serverfailuer);
        } else {
          // If content-type is neither JSON nor HTML, handle other cases (e.g., plain text, XML, etc.)
          print('Unexpected content type: ${response.headers['content-type']}');
          return const Left(StatusRequest.serverfailuer);
        }
      } else {
        return const Left(StatusRequest.offlinefailuer);
      }
    } catch (error) {
      print("Error: $error");
      return const Left(StatusRequest.serverfailuer);
    }
  }
}
