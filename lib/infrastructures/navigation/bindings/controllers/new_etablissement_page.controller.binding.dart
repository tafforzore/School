import 'package:get/get.dart';
import '../../../../presentation/new_etalissement_page/controllers/new_etablissement_page.controller.dart';

class NewEtatblissementPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewEtablissementPageController>(
      () => NewEtablissementPageController(),
    );
  }
}
