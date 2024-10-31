import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/reset_page.controller.dart';

class ResetPageScreen extends GetView<ResetPageController> {
  const ResetPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResetPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
