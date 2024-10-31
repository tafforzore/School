import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/faq_page.controller.dart';

class FaqPageScreen extends GetView<FaqPageController> {
  const FaqPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FaqPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FaqPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
