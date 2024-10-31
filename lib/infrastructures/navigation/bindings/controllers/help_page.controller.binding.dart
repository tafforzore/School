import 'package:get/get.dart';

import '../../../../presentation/help_page/controllers/help_page.controller.dart';

class HelpPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpPageController>(
      () => HelpPageController(),
    );
  }
}
