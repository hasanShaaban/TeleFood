import 'package:dartz/dartz.dart';
import 'package:telefood/core/errors/failuer.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/data/models/confirm_order_response.dart';

abstract class CartRepo {
  Future<Either<Failuer, CartResponse>> getCartInfo();
  Future<Either<Failuer, ConfirmOrderResponse>> confirmOrder({ int? id, required String location, int? tips});
}
