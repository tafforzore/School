import 'package:get/get.dart';
import 'package:school/presentation/register/controllers/register_page.controller.dart';

class RegisterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPageController>(
          () => RegisterPageController(),
    );
  }
}
