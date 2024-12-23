import 'package:dartz/dartz.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/featuers/auth/data/models/regestration_response.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';

class AuthRepoImple implements AuthRepo {


  final ApiService apiService;

  AuthRepoImple(this.apiService);
  
  @override
  Future<Either<Failuer, RegestrationResponse>> signupPostRequest() {
    throw UnimplementedError();
  }
}