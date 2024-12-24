import 'package:dio/dio.dart';

class ApiService {
  final _baseURL = 'http://127.0.0.1:8000/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> post({required String endPoints}) async {
    var response = await _dio.post('$_baseURL$endPoints');
    return response.data;
  }
}
