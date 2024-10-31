import 'package:get/get.dart';
import '../../../domains/enum/auth_enum.dart';
import '../../../domains/repository/auth_repository.dart';
import '../../network/dio_client.dart';
import '../user_request_object/login_request.dart';
import '../user_request_object/register_request.dart';

class AuthServices {
  AuthRepository authRepository = Get.put<AuthRepository>(
      AuthRepository(Get.find<DioClient>()));

  Future<LoginVerification> register({required RegisterRequest registerObject}) async {
    return await authRepository.register(registerObject);
  }

  Future<LoginVerification> login({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  //Carts--------------------------------------------------------------------------------------------------
  Future<LoginVerification> getAllCarts({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> getCartsById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> deleteCartsById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  //Classes--------------------------------------------------------------------------------------------------
  Future<LoginVerification> getClassesById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> getAllClasses({required LoginRequest loginObject}) async{
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> deleteClasseById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> updateClasseById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> newClasse({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  //School--------------------------------------------------------------------------------------------------
  Future<LoginVerification> getSchoolById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> getAllSchools({required LoginRequest loginObject}) async{
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> deleteSchool({required LoginRequest loginObject}) async{
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> updateSchoolById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> newSchool({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  //student--------------------------------------------------------------------------------------------------
  Future<LoginVerification> getStudentById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> getAllStudent({required LoginRequest loginObject}) async{
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> deleteStudentById({required LoginRequest loginObject}) async {
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> updateStudentById({required LoginRequest loginObject}) async{
    return await authRepository.login(loginObject);
  }

  Future<LoginVerification> newStudent({required LoginRequest loginObject}) async{
    return await authRepository.login(loginObject);
  }
}