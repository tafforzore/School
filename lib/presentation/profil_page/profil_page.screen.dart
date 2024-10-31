import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/profil_page.controller.dart';

class ProfilPageScreen extends GetView<ProfilPageController> {
  const ProfilPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfilPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfilPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
