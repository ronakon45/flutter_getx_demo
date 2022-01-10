// ignore_for_file: avoid_print

import 'package:flutter_application_getx/constrings/mystrings.dart';
import 'package:flutter_application_getx/models/product_model.dart';
import 'package:flutter_application_getx/models/randomuser_model.dart';
// import 'package:flutter_application_getx/models/app_requests/product_request.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var product = RxList<ProductModel>().obs();
  var randomusers = RxList().obs();
  var myList = [1, 2, 3];

  Future<void> getProduct() async {
    randomusers.assignAll(myList);

    // var headers = {
    //   HttpHeaders.contentTypeHeader: "application/json",
    //   HttpHeaders.authorizationHeader:
    //       'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IkZCS0o0U3hfR0NqQ1FqVjlJWExRaiJ9.eyJpc3MiOiJodHRwczovL2Rldi1iYy13MS51cy5hdXRoMC5jb20vIiwic3ViIjoiYXV0aDB8NjExZGZmZDA4MjAzNjIwMDZjN2FkZTU1IiwiYXVkIjoiaHR0cHM6Ly9kZXYtYmMtdzEudXMuYXV0aDAuY29tL2FwaS92Mi8iLCJpYXQiOjE2Mzk5ODQ1OTMsImV4cCI6MTY0MDA3MDk5MywiYXpwIjoidjRWYWJKdnRrekhGT1FRZ0lSSWhQY1A3QzY3RUtBWVAiLCJzY29wZSI6InJlYWQ6Y3VycmVudF91c2VyIHVwZGF0ZTpjdXJyZW50X3VzZXJfbWV0YWRhdGEgZGVsZXRlOmN1cnJlbnRfdXNlcl9tZXRhZGF0YSBjcmVhdGU6Y3VycmVudF91c2VyX21ldGFkYXRhIGNyZWF0ZTpjdXJyZW50X3VzZXJfZGV2aWNlX2NyZWRlbnRpYWxzIGRlbGV0ZTpjdXJyZW50X3VzZXJfZGV2aWNlX2NyZWRlbnRpYWxzIHVwZGF0ZTpjdXJyZW50X3VzZXJfaWRlbnRpdGllcyIsImd0eSI6InBhc3N3b3JkIn0.lWTPGOKpzfGG6YG8tI-2Yb92yORCtBGvV1oe_6wrysYix_ryj-H2N6oXY3ejjyxt01Ty9jyWDd8qjtyvV-2zGkg-SG5Dcd9-URDzfF9OeFtnGHianKqJkv74tGRZdYEMZnwg1S4lcZqHKIylx5q27xpLNqJOZKDQben3L8p8GwtKWs7I7X4KkZD3dlF3k4gOHUFDhpJfX7zBqMLPifD6KnC41_FYueS83aMTHFbtGfTGp2K5xmwivynTG4SYFN2wtH7BN8D1xavkgYmOW73Dn5wHEgfsNkJVEtnoQBqYjwlqZtVk_30dMYWyK21OQO88-SjfHKQb6B4qVu9vGqh7Kg'
    // };

    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    // var url = Uri.parse(
    //     'https://serviceapi.dev.itraces.me/Product/GetByPartner/2126/P02');
    // print(url);

    var url = Uri.parse('https://randomuser.me/api/?results=10');

    try {
      print("try");
      print(url);

      var response = await http.get(
        url,
        // headers: headers,
      );
      if (response.statusCode == 200) {
        print("OK 200");
        print(response.body);

        // var jsonResponse =
        //     convert.jsonDecode(response.body) as Map<String, dynamic>;
        // var itemCount = jsonResponse['totalItems'];

        // product.assignAll(productModelFromJson(response.body));

        // randomuser.assignAll();

        final randomUserModel = randomUserModelFromJson(response.body);
        print(randomUserModel.results.toList());

        // randomusers
        //     .assignAll(randomUserModelFromJson(response.body).results.toList());

        // var myList = [
        //   {"user": "new"},
        //   {"user": "new2"},
        //   {"user": "new3"}
        // ];
        // randomusers.assignAll(myList);
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    }
  }

// Future<void> saveProduct(ProductRequest product) async {
//   var headers = {
//     'Content-Type': "application/json",
//     'Authorization': "Bearer " + token
//   };

//   var url = "https://serviceapi.dev.itraces.me/Product/GetByPartner/2126/P02";
//   var response =
//       await http.post(url, body: jsonEncode(product), headers: headers);
//   print(response);
// }
}
