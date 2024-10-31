import 'package:get/get.dart';

import '../../../../presentation/school_page/controllers/school_main_page.controller.dart';

class SchoolPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchoolPageController>(
      () => SchoolPageController(),
    );
  }
}
