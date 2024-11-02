import 'package:get/get.dart';
import 'package:school/domains/repository/student_repository.dart';
import '../../../domains/enum/auth_enum.dart';
import '../../network/dio_client.dart';
import '../user_request_object/create_student_request.dart';

class StudentService {
  StudentRepository studentRepository = Get.put<StudentRepository>(
      StudentRepository(Get.find<DioClient>()));

  //Student--------------------------------------------------------------------------------------------------
  Future<StudentVerification> createStu({required CreateStudentRequest createStudentrequest}) async {
    return await studentRepository.createStudent(createStudentrequest);
  }
}