import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:school/infrastructures/dal/services/auth_services.dart';
import 'package:school/infrastructures/dal/user_request_object/register_request.dart';
import 'package:school/infrastructures/navigation/routes.dart';

import '../../../domains/enum/auth_enum.dart';
class RegisterPageController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController c_password = TextEditingController();
  RxString errorText = ''.obs;

  bool champsVerification(){
    if(password.value.text.isEmpty ||
        c_password.value.text.isEmpty ||
        email.value.text.isEmpty|| username.value.text.isEmpty
    ){
      errorText.value = "Veuillez completer tous les champs !!!";
      return false;
    }
    else{
      if(password.value.text.length<8 || c_password.value.text.length<8){
        errorText.value = "Mots de passe doit contenir 8 caracteres !!!";
      }else
      if(password.value.text != c_password.value.text){
        errorText.value = "Mots de passe Non valide !!!";
        return false;
      }
    }
    return true;
  }

  Future<void> createAccount() async{
    bool fieldsIsOk = champsVerification();
    if(fieldsIsOk){
      RegisterRequest registerObject = RegisterRequest(username: username.value.text, email: email.value.text, password: password.value.text);
      LoginVerification loginVerification =  await AuthServices().register(registerObject: registerObject);

      if(loginVerification == LoginVerification.CREATED){
        Get.offNamed(Routes.HOME_PAGE);
      }else if(loginVerification == LoginVerification.WRONG_DATA){}
      else if(loginVerification == LoginVerification.USER_EXIST){
        errorText.value = "username existe deja !!";
      }
      else{
        //todo: apiError echec de connexion a api
        errorText.value = "une erreur est survenue !!";

      }
    }

  }

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
    password.dispose();
    c_password.dispose();
    email.dispose();
    super.onClose();
  }
}