import 'package:dio/dio.dart';
import 'package:telefood/featuers/auth/data/models/login_model.dart';

class ApiService {
  final _baseURL = 'http://localhost:8000/api/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> post({required String endPoints,required LoginModel loginModel}) async {
    var response = await _dio.post('$_baseURL$endPoints', data: {
      'mobile': loginModel.phoneNumber,
      'password': loginModel.passowrd,
    });
    return response.data;
  }
}
