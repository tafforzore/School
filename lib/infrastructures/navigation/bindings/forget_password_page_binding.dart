import 'package:get/get.dart';

import '../../../presentation/forget_password_page/controllers/forget_password_page_controller.dart';

class ForgetPasswordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetPasswordPageController>(
      () => ForgetPasswordPageController(),
    );
  }
}
