import 'package:dartz/dartz.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/featuers/auth/data/models/login_model.dart';
import 'package:telefood/featuers/auth/data/models/login_response.dart';
import 'package:telefood/featuers/auth/data/models/registration_model.dart';
import 'package:telefood/featuers/auth/data/models/registration_response/registration_response.dart';

abstract class AuthRepo {
  Future<Either<Failuer, RegistrationResponse>> signupRequest(
      {required RegistrationModel registrationModel});
  Future<Either<Failuer, LoginResponse>> loginRequest(
      {required LoginModel loginModel});
}
