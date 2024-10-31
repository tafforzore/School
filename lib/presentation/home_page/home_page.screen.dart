import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:school/presentation/home_page/controllers/home_page.controller.dart';
import 'package:school/res/color_app.dart';
import 'package:school/res/size.dart';
import 'package:sizer/sizer.dart';


class HomePageScreen extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/aic-logo.png',width: 30.sp,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      Text(
                          "Accueil"+ " "*10,
                          style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.w900,color: black100,)
                      ),
                      Row(
                        children: [
                          Text(
                            "Bienvenue",
                            style: TextStyle(fontSize: subtitleSize, fontWeight: FontWeight.bold, color: black80),
                          ),
                          Text(
                            " Severin!!",
                            style: TextStyle(fontSize: subtitleSize, fontWeight: FontWeight.bold , color: primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/cameras.png'),
                    backgroundColor: primaryColor,minRadius: 22.sp,
                  )
                ],
              ),
              SizedBox(height: 20.sp),
              SizedBox(
                height: 23.sp,
                  child: Text("Nouveau", style: TextStyle(fontWeight: FontWeight.w500, color: black100, fontSize: 20.sp),)),
              Row(
                children: [
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(color: primaryColor, width: 2),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Bordures arrondies (facultatif)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    onPressed: (){},
                    child: IconButton(
                      icon: Icon(Icons.add, size: 25.sp, color: Colors.white),
                      onPressed: () {
                        // Handle add new item
                      },
                    ),
                  ),
                  SizedBox(width: 10.sp,),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(color: primaryColor, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    onPressed: (){},
                    child: IconButton(
                      icon: Icon(Icons.download, size: 25.sp, color: primaryColor),
                      onPressed: () {
                        // Handle add new item
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text("Cadre"),
              // Display cards here
              SizedBox(height: 20),
              Text("Recent"),
              // Display recent images here
            ],
          ),
        ),
      ),
    );
  }

}




