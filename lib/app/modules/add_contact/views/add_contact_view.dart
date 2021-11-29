import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_contact_controller.dart';

class AddContactView extends GetView<AddContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddContactView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddContactView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
