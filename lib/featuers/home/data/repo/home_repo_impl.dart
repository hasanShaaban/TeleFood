import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_model.dart';
import 'package:telefood/featuers/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failuer, StoreModel>> getStores() async {
    try {
      var data = await apiService.get(endPoints: 'stores/get?');
      StoreModel response = StoreModel.fromJson(data);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
