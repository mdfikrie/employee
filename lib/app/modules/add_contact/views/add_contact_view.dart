import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_contact_controller.dart';

class AddContactView extends GetView<AddContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Add Contact'),
        backgroundColor: Color(0xFF1c2e46),
        actions: [
          TextButton(
            onPressed: () async {
              await controller.save(
                controller.username.text,
                controller.email.text,
                controller.job.text,
              );
              controller.isShowResponse.value = true;
            },
            child: Text(
              "SAVE",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 70,
            backgroundColor: Color(0xFF1c2e46),
            child: Icon(
              Icons.camera_alt,
              size: 30,
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                TextField(
                  controller: controller.username,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusColor: Color(0xFF1c2e46),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller.email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusColor: Color(0xFF1c2e46),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller.job,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.work),
                    hintText: "Job",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusColor: Color(0xFF1c2e46),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () async {
                await controller.save(
                  controller.username.text,
                  controller.email.text,
                  controller.job.text,
                );
                controller.isShowResponse.value = true;
              },
              child: Text("SAVE"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1c2e46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Response:"),
          ),
          Obx(
            () => controller.isShowResponse.isTrue
                ? Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      title: Text("${controller.userBaru['name']}"),
                      subtitle: Text("${controller.userBaru['email']}"),
                      trailing: Text("${controller.userBaru['job']}"),
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
