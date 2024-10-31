import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/new_etablissement_page.controller.dart';

class NewDealsPageScreen extends GetView<NewEtablissementPageController> {
  const NewDealsPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewDealsPageScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NewDealsPageScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
