import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AddContactController extends GetxController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController job;

  var isShowResponse = false.obs;

  var userBaru = {}.obs;

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    job = TextEditingController();
    super.onInit();
  }

  @override
  onClose() {
    username.dispose();
    email.dispose();
    job.dispose();
    super.onClose();
  }

  Future<void> save(String username, String email, String job) async {
    try {
      Uri url = Uri.parse("https://reqres.in/api/users");
      final body = {
        'name': username,
        'email': email,
        'job': job,
        'avatar': "avatar.jpg"
      };
      final response = await http.post(url, body: body);
      final result = json.decode(response.body);
      userBaru.value = result;
      print(userBaru);
    } catch (e) {
      print(e);
    }
  }
}
