import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/help_page.controller.dart';

class HelpPageScreen extends GetView<HelpPageController> {
  const HelpPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelpPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HelpPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
