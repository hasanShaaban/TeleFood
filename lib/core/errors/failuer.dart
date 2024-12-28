import 'package:dio/dio.dart';

abstract class Failuer {
  final String errorMessage;

  const Failuer(this.errorMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errorMessage);

  factory ServerFailuer.fromDioExceptio(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection time out with APIServer');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send time out with APIServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Recive time out with APIServer');
      case DioExceptionType.badCertificate:
        return ServerFailuer('Bad Certificate with APIServer');
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer('Request to APIServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailuer('You are not connected to the server');
      case DioExceptionType.unknown:
        return ServerFailuer('No Internet Connection');
      default:
        return ServerFailuer('There was an error, please try again');
    }
  }

  factory ServerFailuer.fromResponse(int statusCode, dynamic reponse) {
    if (statusCode == 400) {
      if (reponse['message'] is Map<String, dynamic>) {
        if(reponse['message']['confirm_password'] != null){
          return ServerFailuer(reponse['message']['confirm_password'][0]);
        }else if(reponse['message']['mobile'] != null){
          return ServerFailuer(reponse['message']['mobile'][0]);
        }else if(reponse['message']['password'] != null){
          return ServerFailuer(reponse['message']['password'][0]);
        }
      }
      return ServerFailuer(reponse['message'].toString());
    } else if (statusCode == 401) {
      return ServerFailuer(reponse['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('You request not found, Please try again later');
    } else if (statusCode == 500) {
      return ServerFailuer('Internet Server error, please try again later');
    } else if (statusCode == 403) {
      return ServerFailuer('Internet Server error, pleas try again later');
    } else {
      return ServerFailuer('There was an error, please try again');
    }
  }
}
