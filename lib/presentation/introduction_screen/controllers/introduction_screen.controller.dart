import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../introduction.screen.dart';

class IntroductionScreenController extends GetxController with SingleGetTickerProviderMixin{

  late TabController tabController;
  RxBool transition = false.obs;
  RxString next = 'Suivant'.obs;
  // final TabController controlle = DefaultTabController.of(context);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      transition.value = (tabController.index == 3 - 1);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void increment() => count.value++;
}
