import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddContactController extends GetxController {
  late TextEditingController username;
  late TextEditingController email;

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    super.onInit();
  }

  void save(String username, String email) {
    print(username);
    print(email);
  }
}
