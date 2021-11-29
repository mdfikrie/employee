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
            onPressed: () {
              controller.save(
                controller.username.text,
                controller.email.text,
              );
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
                  height: 20,
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
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                controller.save(
                  controller.username.text,
                  controller.email.text,
                );
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
        ],
      ),
    );
  }
}
