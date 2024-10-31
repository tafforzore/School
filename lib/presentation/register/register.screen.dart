import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school/res/size.dart';
import 'package:sizer/sizer.dart';
import '../../infrastructures/navigation/routes.dart';
import '../../res/color_app.dart';
import 'controllers/register_page.controller.dart';


class RegisterPageScreen extends GetView<RegisterPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/photographe4.png', height: 28.h,),
            // Positioned(
            //   bottom: 1.0,
            //   right: 1.0,
            //   child: Image.asset('assets/images/photographe5_r.png', height: 28.h,),
            // ),
            ListView(
              children: [
                SizedBox(height: 7.h,),
                Image.asset(
                  'assets/images/aic-logo.png', width: 30.sp, height: 30.sp,),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: textSize),

                          Text(
                            "S'inscire",
                            style: TextStyle(fontSize: titleSize,
                                fontWeight: FontWeight.bold,
                                color: primaryColor),
                          ),
                          SizedBox(height: textSize),
                          Obx(() {
                            return Text(
                              controller.errorText.value,
                              style: TextStyle(fontSize: textSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            );
                          }),
                          SizedBox(height: textSize),
                          TextField(
                            controller: controller.username,
                            decoration: InputDecoration(
                              labelText: "Username",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  gapPadding: 10),
                              labelStyle: TextStyle(
                                  fontSize: textSize, color: primaryColor),
                            ),
                          ),
                          SizedBox(height: textSize),
                          TextField(
                            controller: controller.email,
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  gapPadding: 10),
                              labelStyle: TextStyle(
                                  fontSize: textSize, color: primaryColor),
                            ),
                          ),
                          SizedBox(height: textSize),
                          TextField(
                            obscureText: true,
                            controller: controller.password,
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  gapPadding: 10),
                              labelStyle: TextStyle(
                                  fontSize: textSize, color: primaryColor),),
                          ),
                          SizedBox(height: textSize),
                          TextField(
                              obscureText: true,
                              controller: controller.c_password,
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    gapPadding: 10),
                                labelStyle: TextStyle(
                                    fontSize: textSize, color: primaryColor),)
                          ),
                          SizedBox(height: textSize),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Get.offNamed(Routes.LOGIN_PAGE);
                                },
                                child: Text("Connexion",
                                  style: TextStyle(color: primaryColor),),
                              ),
                            ],
                          ),
                          SizedBox(height: textSize),
                          TextButton(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: primaryColor, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Bordures arrondies (facultatif)
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                            ),
                            onPressed: controller.createAccount,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("S'inscrire",
                                  style: TextStyle(color: primaryColor
                                      , fontSize: textSize),),
                              ],
                            ),
                          ),
                          SizedBox(height: textSize),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
