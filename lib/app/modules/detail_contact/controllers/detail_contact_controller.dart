import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailContactController extends GetxController {
  var username = "".obs;
  var email = "".obs;
  var avatar = "".obs;
  @override
  void onInit() {
    super.onInit();
    getDetail(Get.arguments);
  }

  void getDetail(int id) async {
    try {
      Uri url = Uri.parse("https://reqres.in/api/users/$id");
      final response = await http.get(url);
      final result = json.decode(response.body)['data'];
      username.value = result['first_name'] + " " + result['last_name'];
      email.value = result['email'];
      avatar.value = result['avatar'];
    } catch (e) {
      print(e);
    }
  }
}
