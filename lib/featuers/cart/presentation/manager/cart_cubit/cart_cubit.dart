
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/data/repo/cart_repo.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.cartRepo) : super(CartInitial());
  final CartRepo cartRepo;
  Future<void> getCartInfo()async{
    emit(CartLoading());
    var result = await cartRepo.getCartInfo();
    result.fold((failuer){
      emit(CartFailuer(failuer.errorMessage));
    }, (response){
      emit(CartSuccess(response));
      print(response.data);
    });
  }
}
