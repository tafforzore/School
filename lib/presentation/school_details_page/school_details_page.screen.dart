import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/school_details_page.controller.dart';

class DealsDetailsPageScreen extends GetView<SchoolDetailsPageController> {
  const DealsDetailsPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DealsDetailsPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DealsDetailsPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
