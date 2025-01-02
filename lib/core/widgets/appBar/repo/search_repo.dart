import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/widgets/appBar/search_model/search_model.dart';

class SearchRepo {
  final ApiService apiService;
  SearchRepo(this.apiService);

  Future<Either<Failuer, SearchModel>> search({required String value}) async {
    try {
      var data = await apiService.get(endPoints: 'search/$value');
      SearchModel response = SearchModel.fromJson(data);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
