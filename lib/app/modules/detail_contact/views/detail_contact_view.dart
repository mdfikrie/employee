import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_contact_controller.dart';

class DetailContactView extends GetView<DetailContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Contact'),
        backgroundColor: Color(0xFF1c2e46),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.star_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: Obx(
        () => Column(
          children: [
            Container(
              height: Get.height * 0.3,
              width: Get.width,
              color: Color(0xFF1c2e46),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage("${controller.avatar}"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    controller.username != ""
                        ? "${controller.username}"
                        : "Loading..",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 8,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: 50,
                        child: Icon(
                          Icons.phone,
                          color: Color(0xFF1c2e46),
                        ),
                      ),
                      title: Text(
                        controller.username != ""
                            ? "${controller.username}"
                            : "Loading..",
                      ),
                      subtitle: Text("Username"),
                      trailing: Icon(Icons.message),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 8,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: 50,
                        child: Icon(
                          Icons.email,
                          color: Color(0xFF1c2e46),
                        ),
                      ),
                      title: Text(
                        controller.username != ""
                            ? "${controller.email}"
                            : "Loading..",
                      ),
                      subtitle: Text("Email"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
