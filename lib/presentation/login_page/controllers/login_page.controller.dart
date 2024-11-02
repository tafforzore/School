import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school/domains/enum/auth_enum.dart';
import 'package:school/infrastructures/dal/services/auth_services.dart';
import 'package:school/infrastructures/dal/user_request_object/login_request.dart';


import '../../../infrastructures/navigation/routes.dart';


class LoginPageController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  RxString error = "".obs;

  loginAction()async{
    if(username.value.text.isNotEmpty && password.value.text.isNotEmpty){
      if(password.value.text.length>7){
        LoginRequest loginRequest = LoginRequest(username: username.value.text, password: password.value.text);
        LoginVerification loginVerification = await AuthServices().login(loginRequest: loginRequest);

        if(loginVerification == LoginVerification.CREATED){
          Get.offNamed(Routes.HOME_PAGE);
        }else if(loginVerification == LoginVerification.WRONG_DATA){}
        else if(loginVerification == LoginVerification.USER_EXIST){
          error.value = "username existe deja !!";
        }
        else{
          //todo: apiError echec de connexion a api
          error.value = "une erreur est survenue !!";

        }
      }else{
        error.value = "Mots de passe a au moins de 8 caracteres";
      }
    }
    else{
      error.value = "Veuillez completer tous les champs !!";
    }
  }


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    username.dispose();
    password.dispose;
    super.onClose();
  }

  void increment() => count.value++;
}
