import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/school_main_page.controller.dart';

class DealsPageScreen extends GetView<SchoolPageController> {
  const DealsPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealsPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DealsPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
