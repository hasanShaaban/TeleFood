import 'package:dartz/dartz.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_model.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_response.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_model.dart';

abstract class ShopRepo {
  Future<Either<Failuer, ProductsModel>> getProducts(String storeName);
  Future<Either<Failuer, OrderResponse>> postOrder(OrderModel orderModel);
  Future<Either<Failuer, OrderResponse>> updateOrder(OrderModel orderModel);
}
