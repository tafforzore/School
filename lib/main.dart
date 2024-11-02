import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/smart_management.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'datas/local_storage/encrypted_storage.dart';
import 'infrastructures/navigation/navigation.dart';
import 'infrastructures/navigation/routes.dart';
import 'infrastructures/network/dio_client.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDio();
  initLocalStorage();
  runApp(const SchoolApp());
}

Future<void> initLocalStorage() async {
  if (!Get.isRegistered<EncryptedStorage>()) {
    await Get.putAsync(() async {
      EncryptedStorage encryptedStorage = await EncryptedStorage.init();
      return encryptedStorage;
    }, permanent: true);
  }
}

initDio() {
  if (!Get.isRegistered<DioClient>()) {
    Get.put(DioClient(), permanent: true);
  }
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          smartManagement: SmartManagement.onlyBuilder,
          title: 'AIC',
          initialRoute: Routes.HOME_PAGE,
          getPages: Nav.routes,
          theme:  ThemeData(
            fontFamily: 'Monsterrat',
                textTheme: const  TextTheme(
                    bodyMedium: TextStyle(
                      fontSize: 18,
                      letterSpacing: 1,
                      height: .9,)
                ),
            colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3239E5)),
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
