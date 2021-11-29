import 'dart:convert';
import 'package:employee/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  late TextEditingController email;
  late TextEditingController password;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  void login(String username, String password) async {
    try {
      Uri url = Uri.parse("https://reqres.in/api/login");
      Map<String, dynamic> body = {
        'email': username,
        'password': password,
      };
      final response = await http.post(url, body: body);
      if (response.statusCode != 400) {
        final result = json.decode(response.body);
        if (result['token'] != "") {
          Get.offNamed(Routes.HOME);
        } else {
          print("tidak ada token");
        }
      } else {
        Get.snackbar(
          "Gagal",
          "Data tidak ditemukan!",
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
