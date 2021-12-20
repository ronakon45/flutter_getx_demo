import 'dart:convert';

import 'package:get/get.dart';

class UserConnect extends GetConnect {
  Future<List<dynamic>> getUsers() async {
    final response = await get('https://randomuser.me/api/?results=10');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }

  Future<List<dynamic>> postUsers(String userId, String password) async {
    var headers = {'Content-Type': "application/json", 'Authorization': ""};
    var user = {'userId': userId, 'password': password};
    final response = await post(
        'https://randomuser.me/api/?results=10', jsonEncode(user),
        headers: headers);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }
}
