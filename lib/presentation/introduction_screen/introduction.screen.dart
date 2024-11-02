import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:school/presentation/introduction_screen/controllers/introduction_screen.controller.dart';
import 'package:school/presentation/login_page/login_page.screen.dart';
import 'package:sizer/sizer.dart';

import '../../infrastructures/navigation/routes.dart';
import '../../res/color_app.dart';


class IntroductionScreen extends GetView<IntroductionScreenController> {

  bool changeLabelText = true;
  static var Page = <StatelessWidget>[
    Page1(image: 'assets/images/cameras.png',
      title: "Bienvenu sur AIC",
      texte: "application faite pour prendre faires les carte des etudiant rapidement et efficacement",
      endTransition: false,
    ),
    Page1(image: 'assets/images/carte.png',
      title: "Vos photos a portee de mains",
      texte: "soyez de plus en plus efficaces dans la prise de photos dans les lycee college , ...",
      rotation: true,
        endTransition: false
    ),
    Page1(image: 'assets/images/banderole.png',
      title: "Créez des cartes d'étudiant en un clin d'œil",
      texte: "Plius besoin de vous tracacer, grace a notre application intelligentes nous le faisons efficacement.",
      rotation: true,
        endTransition: true
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: Page.length,
        child: Builder(
          builder: (BuildContext context) =>
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: IconTheme(
                        data: IconThemeData(
                          size: 128.0,
                          color: Theme
                              .of(context)
                              .colorScheme
                              .secondary,
                        ),
                        child: TabBarView(children: Page),
                      ),
                    ),
                    TabPageSelector(
                      selectedColor: primaryColor,
                    ),
                    SizedBox(height: 20.sp,),
                  ],
                ),
              ),
        ),
      ),

      // Column(
      //   children: [
      //
      //
      //     ElevatedButton(
      //         style: TextButton.styleFrom(
      //           side: BorderSide(color: primaryColor, width: 2),
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           padding: EdgeInsets.symmetric(horizontal: 20,
      //               vertical: 10),
      //         ),
      //         onPressed: () {
      //           final TabController controlle =
      //           DefaultTabController.of(context);
      //           if (controlle.index == Page.length - 1) {
      //             Get.offNamed(Routes.LOGIN_PAGE);
      //             changeLabelText = false;
      //           } else {
      //             if (!controlle.indexIsChanging) {
      //               controlle.animateTo(controlle.index + 1);
      //               if (controlle.index == Page.length - 1) {
      //                 print(
      //                     "${controlle.index} : ${Page.length - 1}");
      //                 changeLabelText = true;
      //                 controller.translate.value = true;
      //               }
      //             }
      //           }
      //         },
      //         child: startLaunchApp()
      //     ),
      //     SizedBox(height: 15.sp,),
      //   ],
      // ),
    );
  }

  Row startLaunchApp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() {
          return Text(controller.translate.value? 'Commencer':"Suivant", style: TextStyle(
              color: primaryColor, fontSize: 22.sp),);
        }),
        SizedBox(width: 10.sp,),
        Icon(Icons.navigate_next_rounded,
            color: primaryColor)
      ],
    );
  }
}


class Page1 extends StatelessWidget {
  String image;
  String title;
  String texte;
  bool rotation;
  bool endTransition;

  Page1({
    required this.image,
    required this.title,
    required this.texte,
    this.rotation = false,
    this.endTransition = false
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [

                    rotation ?
                    Transform.rotate(
                      angle: -30 * 3.1415927 / 180,
                      child: Image.asset(image, width: 80.sw, height: 80.sw,),
                    ) :
                    Image.asset(image, width: 100.sw, height: 100.sw,)
                  ],
                ),
                SizedBox(height: 17.sp),
                Text(title, style: TextStyle(fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: primaryColor), textAlign: TextAlign.center),
                const SizedBox(height: 12.0),
                Text(texte, style: TextStyle(color: black50, fontSize: 20.sp),
                  textAlign: TextAlign.center,),
                SizedBox(height: 30.sp,),
              ElevatedButton(
                  style: TextButton.styleFrom(
                    side: BorderSide(color: primaryColor, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20,
                        vertical: 10),
                  ),
                  onPressed: (){
                    Get.offNamed(Routes.LOGIN_PAGE);
                    }, child:SizedBox(
                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text("Suivant", style: TextStyle(
                      color: primaryColor, fontSize: 22.sp),),
                    SizedBox(width: 10.sp,),
                    Icon(Icons.navigate_next_rounded,
                        color: primaryColor, size: 25.sp,)],
                                  ),
                  ))
              ],
            ),
          )),

    );
  }


}

