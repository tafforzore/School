import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school/res/size.dart';
import 'package:sizer/sizer.dart';
import '../../infrastructures/navigation/routes.dart';
import '../../res/color_app.dart';
import 'controllers/login_page.controller.dart';


class LoginPageScreen extends GetView<LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/photographe4.png', height: 28.h,),
            Positioned(
              bottom: 1.0,
              right: 1.0,
              child: Image.asset('assets/images/photographe5_r.png', height: 28.h,),
            ),
            ListView(
              children: [
                SizedBox(height: 10.h,),
                Image.asset('assets/images/aic-logo.png', width: 30.sp, height: 30.sp,),
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
                            "Se Connecter",
                            style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold, color: primaryColor),
                          ),
                          SizedBox(height: textSize),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30), gapPadding: 10),
                              labelStyle: TextStyle(fontSize: textSize,color: primaryColor),
                            ),
                          ),
                          SizedBox(height: textSize),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              border:  OutlineInputBorder(borderRadius: BorderRadius.circular(30), gapPadding: 10),
                              labelStyle: TextStyle(fontSize: textSize,color: primaryColor),)
                          ),
                          SizedBox(height: textSize),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Get.offNamed(Routes.FORGET_PASSWORD_PAGE);
                                },
                                child: Text("Mot de passe oublié",
                                  style:  TextStyle(color: primaryColor),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.offNamed(Routes.REGISTER_PAGE);
                                },
                                child: Text("Inscription",
                                  style:  TextStyle(color: primaryColor),),
                              ),
                            ],
                          ),
                          SizedBox(height: textSize),
                          TextButton(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: primaryColor, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // Bordures arrondies (facultatif)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            ),
                            onPressed: () {
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("Se connecter",
                                  style:  TextStyle(color: primaryColor
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
