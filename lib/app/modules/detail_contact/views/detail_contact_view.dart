import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_contact_controller.dart';

class DetailContactView extends GetView<DetailContactController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailContactView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailContactView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
