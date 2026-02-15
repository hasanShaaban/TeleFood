import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/core/utils/api_service.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_model.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_response.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_model.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo.dart';

class ShopRepoImpl extends ShopRepo {
  final ApiService apiService;
  ShopRepoImpl({required this.apiService});

  @override
  Future<Either<Failuer, ProductsModel>> getProducts(storeName) async {
    try {
      var data = await apiService.get(endPoints: 'store/products/$storeName');
      ProductsModel response = ProductsModel.fromJson(data);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, OrderResponse>> postOrder(
      OrderModel orderModel) async {
    try {
      var data = await apiService.postOrder(
          endPoints: 'basket/store?', orderModel: orderModel);
      OrderResponse response = OrderResponse.fromJson(data);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuer, OrderResponse>> updateOrder(
      OrderModel orderModel) async {
    try {
      var data = await apiService.updatOrder(
          endPoints: 'basket/update?', orderModel: orderModel);
      OrderResponse response = OrderResponse.fromJson(data);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioExceptio(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
