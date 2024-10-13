import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_course/core/class/statusrequest.dart';
import 'package:ecommerce_course/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
          Uri.parse(linkurl),
          body: jsonEncode(data),
          headers: {'Content-Type': 'application/json'},
        );

        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          try {
            // Clean the response body by removing any unexpected text before the valid JSON
            String responseBodyStr = response.body;

            // Find the first "{" which indicates the start of the JSON
            int jsonStartIndex = responseBodyStr.indexOf('{');

            // Extract the valid JSON part from that index onward
            String validJson = responseBodyStr.substring(jsonStartIndex);

            Map responseBody = jsonDecode(validJson);
            return Right(responseBody);
          } catch (e) {
            print('Error decoding JSON: $e');
            return const Left(StatusRequest.serverfailuer); // Handle invalid JSON response
          }
        } else {
          return const Left(StatusRequest.serverfailuer);
        }
      } else {
        return const Left(StatusRequest.offlinefailuer);
      }
    } catch (error) {
      print("Error: ${error}");
      return const Left(StatusRequest.serverfailuer);
    }
  }
}
