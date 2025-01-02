import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/data/category/category_model/category_model.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';

class CategoryRepo {
  final ApiService apiService;
  CategoryRepo(this.apiService);

  Future<Either<Failuer, CategoryModel>> getCategory() async{
    try{
      var data = await apiService.get(endPoints: 'category/get');
      CategoryModel response = CategoryModel.fromJson(data);
      return right(response);
    }catch(e){
      if(e is DioException){
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
