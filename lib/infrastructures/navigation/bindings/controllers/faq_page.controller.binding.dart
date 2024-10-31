import 'package:get/get.dart';

import '../../../../presentation/faq_page/controllers/faq_page.controller.dart';

class FaqPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FaqPageController>(
      () => FaqPageController(),
    );
  }
}
