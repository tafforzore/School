import 'package:get/get.dart';

import '../../../infrastructures/navigation/routes.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  void _navigateToHome()async{
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(Routes.INTRODUCTION_SCREENS);
    });
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    _navigateToHome();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
