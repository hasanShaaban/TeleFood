import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_model.dart';
import 'package:telefood/featuers/shop/data/repo/shop_repo.dart';

part 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this.shopRepo) : super(GetProductsInitial());

  final ShopRepo shopRepo;
  Future<void> getProducts({required String storeName}) async{
    emit(GetProductsLoading());
    var result = await shopRepo.getProducts(storeName);
    result.fold((failuer){
      emit(GetProductsFailuer(failuer.errorMessage));
    }, (response){
      emit(GetProductsSuccess(response));
    });
  }
}
