import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:school/res/color_app.dart';
import 'package:sizer/sizer.dart';

import 'controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/aic-logo.png', width: 100.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Artificial ',
                      style: TextStyle(fontSize: 24.sp, color: primaryColor, fontStyle:FontStyle.italic, fontWeight: FontWeight.w600, letterSpacing: .3),
                    ),
                    Text(
                      'Intelligence ',
                      style: TextStyle(fontSize: 24.sp, color: primaryColor, fontStyle:FontStyle.italic, fontWeight: FontWeight.w600, letterSpacing: .3),
                    ),
                    Text(
                      ' Card',
                      style: TextStyle(fontSize: 24.sp, color: Colors.red, fontStyle:FontStyle.italic, fontWeight: FontWeight.w600, letterSpacing: .3),
                    ),
                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}


