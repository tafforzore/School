import 'package:get/get.dart';

import '../../../../presentation/reset_page/controllers/reset_page.controller.dart';

class ResetPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPageController>(
      () => ResetPageController(),
    );
  }
}
