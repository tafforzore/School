import 'package:get/get.dart';

import '../../../../presentation/profil_page/controllers/profil_page.controller.dart';

class ProfilPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilPageController>(
      () => ProfilPageController(),
    );
  }
}
