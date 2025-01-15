
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/cart/data/models/confirm_order_response.dart';
import 'package:telefood/featuers/cart/data/repo/cart_repo.dart';

part 'confirm_order_state.dart';

class ConfirmOrderCubit extends Cubit<ConfirmOrderState> {
  ConfirmOrderCubit(this.cartRepo) : super(ConfirmOrderInitial());
  final CartRepo cartRepo;
  Future<void> confirmOrder({required String location,int? id, int? tips}) async{
    emit(ConfirmOrderLoading());
    var result = await cartRepo.confirmOrder(id: id, location: location, tips: tips);
    result.fold((failuer){
      emit(ConfirmOrderFailuer(failuer.errorMessage));
    },(response){
      emit(ConfirmOrderSuccess(response));
    });
  }

}
