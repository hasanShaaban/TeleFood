import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/featuers/auth/data/models/login_model.dart';
import 'package:telefood/featuers/auth/data/models/login_response.dart';
import 'package:telefood/featuers/auth/data/models/regestration_response.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';

class AuthRepoImple implements AuthRepo {
  final ApiService apiService;
  AuthRepoImple({required this.apiService});

  @override
  Future<Either<Failuer, RegestrationResponse>> signupRequest() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, LoginResponse>> loginRequest({required LoginModel loginModel}) async{

    try{
      var data = await apiService.post(endPoints: 'api/login?mobile=${loginModel.phoneNumber}&password=${loginModel.passowrd}');
      LoginResponse response = LoginResponse.fromJson(data);
      return right(response);
    }catch(e){
      if(e is DioException){
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }

  }
}
