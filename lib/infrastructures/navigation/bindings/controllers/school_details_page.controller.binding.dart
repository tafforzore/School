import 'package:get/get.dart';
import '../../../../presentation/school_details_page/controllers/school_details_page.controller.dart';

class DealsDetailsPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchoolDetailsPageController>(
      () => SchoolDetailsPageController(),
    );
  }
}
