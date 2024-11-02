
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:school/datas/local_storage/encrypted_storage.dart';
import 'package:school/domains/enum/auth_enum.dart';
import 'package:school/infrastructures/dal/user_request_object/create_student_request.dart';
import 'package:school/infrastructures/dal/user_request_object/login_request.dart';
import 'package:school/infrastructures/dal/user_request_object/register_request.dart';
import 'package:school/infrastructures/network/dio_client.dart';
import '../../datas/user_model.dart';

class StudentRepository{
  final DioClient dioClient;
  StudentRepository(this.dioClient);


  Future<StudentVerification> createStudent(CreateStudentRequest createStudentRequest) async {
    print(dioClient.dio.options.baseUrl);
    final response = await dioClient.dio.post('/account/register/', data: createStudentRequest.toMap());

    print("createStudent ${response.data}");
    if (response.statusCode == HttpStatus.ok) {
      return StudentVerification.OK;
    } else if(response.statusCode == HttpStatus.badRequest){
      return StudentVerification.WRONG_DATA;
    } else if(response.statusCode == HttpStatus.unauthorized){
      return StudentVerification.USER_EXIST;
    }else{
      return StudentVerification.API_ERROR;
    }
  }

}
