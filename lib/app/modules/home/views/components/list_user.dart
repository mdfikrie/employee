import 'package:employee/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListUser extends GetView<HomeController> {
  const ListUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: controller.allUser.length,
        itemBuilder: (context, index) => ListTile(
          onTap: () {},
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: NetworkImage("${controller.allUser[index]['avatar']}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
              "${controller.allUser[index]['first_name']} ${controller.allUser[index]['last_name']}"),
          subtitle: Text("${controller.allUser[index]['email']}"),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
