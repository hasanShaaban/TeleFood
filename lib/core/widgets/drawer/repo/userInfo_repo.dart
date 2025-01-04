import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/core/widgets/drawer/user_model/user_model.dart';

class UserinfoRepo {
  final ApiService apiService;
  UserinfoRepo(this.apiService);
  Future<Either<Failuer, UserModel>> getUserInfo() async {
    final Map<String, dynamic> params = {'token': token};
    try {
      var data = await apiService.get(endPoints: 'UserInfo?', data: params);
      UserModel response = UserModel.fromJson(data);
      userLocation = '${response.data!.location}/${response.data!.locationDetails}';
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
