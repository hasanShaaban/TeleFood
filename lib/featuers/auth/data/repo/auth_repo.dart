import 'package:dartz/dartz.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/featuers/auth/data/models/regestration_response.dart';

abstract class AuthRepo {
  Future<Either<Failuer,RegestrationResponse>> signupPostRequest();
}