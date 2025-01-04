import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_model.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_response.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo.dart';

part 'order_state.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit(this.shopRepo) : super(OrderInitial());
  final ShopRepo shopRepo;
  Future<void> postOrder({required OrderModel orderModel}) async {
    emit(OrderLoading());
    var result = await shopRepo.postOrder(orderModel);

    result.fold((failuer) {
      emit(OrderFailuer(failuer.errorMessage));
    }, (response) {
      emit(OrderSuccess(response));
    });
  }
}
