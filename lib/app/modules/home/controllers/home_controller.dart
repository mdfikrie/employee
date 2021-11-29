import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  var allUser = [].obs;
  @override
  void onInit() {
    listAllUser();
    super.onInit();
  }

  void listAllUser() async {
    try {
      Uri url = Uri.parse("https://reqres.in/api/users?page=1");
      final response = await http.get(url);
      allUser.value = json.decode(response.body)['data'];
    } catch (e) {
      print(e);
    }
  }
}
