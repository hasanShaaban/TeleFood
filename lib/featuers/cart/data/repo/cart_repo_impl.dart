import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/data/models/confirm_order_response.dart';
import 'package:telefood/featuers/cart/data/repo/cart_repo.dart';

class CartRepoImpl extends CartRepo {
  final ApiService apiService;
  CartRepoImpl({required this.apiService});
  @override
  Future<Either<Failuer, CartResponse>> getCartInfo() async {
    try {
      var data = await apiService
          .get(endPoints: 'basket/index?', data: {'token': token});
      CartResponse response = CartResponse.fromJson(data);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, ConfirmOrderResponse>> confirmOrder(
      {int? id, required String location, int? tips}) async {
    try {
      var data = await apiService.confirmOrder(
          endPoints: 'checkout?', location: location, payId: id, tips: tips);
          ConfirmOrderResponse response = ConfirmOrderResponse.fromJson(data);
          return right(response);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
