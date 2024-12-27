import 'package:dio/dio.dart';
import 'package:telefood/featuers/auth/data/models/login_model.dart';
import 'package:telefood/featuers/auth/data/models/registration_model.dart';

class ApiService {
  final _baseURL = 'http://localhost:8000/api/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> postLogin(
      {required String endPoints, required LoginModel loginModel}) async {
    var response = await _dio.post('$_baseURL$endPoints', data: {
      'mobile': loginModel.phoneNumber,
      'password': loginModel.passowrd,
    });
    return response.data;
  }

  Future<Map<String, dynamic>> postSignUp(
      {required String endPoints,
      required RegistrationModel registrationModel}) async {
    FormData formData = FormData.fromMap({
      'first_name': registrationModel.firstName,
      'last_name': registrationModel.lastName,
      'location': registrationModel.location,
      'mobile': registrationModel.mobile,
      'password': registrationModel,
      'confirm_password': registrationModel.confirmPassowrd,
      'location_details': registrationModel.locationDetails,
      'image':await MultipartFile.fromFile(registrationModel.image!.path)
    });
    var response = await _dio.post('$_baseURL$endPoints',
        options: Options(headers: {
          'Content-Type': 'multipart/form-data',
        }),
        data: formData);
    return response.data;
  }
}
