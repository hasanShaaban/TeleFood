import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/driver/data/models/driver_order_model/driver_order_model.dart';

class DriverRepoImpl {
  final ApiService apiService;
  DriverRepoImpl(this.apiService);

  Future<Either<Failuer, DriverOrderModel>> getDriverOrders() async{
    try{
      var data = await apiService.get(endPoints: 'orders?', data: {'token': token});
      DriverOrderModel response = DriverOrderModel.fromJson(data);
      return right(response);
    }catch (e){
      if(e is DioException){
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}