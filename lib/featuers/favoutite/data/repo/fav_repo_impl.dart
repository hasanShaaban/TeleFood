import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_model.dart';

class FavRepoImpl {
  final ApiService apiService;
  FavRepoImpl(this.apiService);

  Future<Either<Failuer, ProductsModel>> getFavouiteProds()async{
    try{
      var data = await apiService.get(endPoints: 'favorite/index?', data: {'token': token});
      ProductsModel response = ProductsModel.fromJson(data);
      favorite = response.data!;
      return right(response);
    }catch (e){
      if(e is DioException){
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));

    }
  }
}