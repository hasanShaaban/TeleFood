import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/data/governorates/governorates.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_model.dart';
import 'package:telefood/featuers/home/data/repo/home_repo.dart';

part 'get_stores_state.dart';

class GetStoresCubit extends Cubit<GetStoresState> {
  GetStoresCubit(this.homeRepo) : super(GetStoresInitial());

  final HomeRepo homeRepo;
  Future<void> getStores() async {
    if(Governorates.allGovernorates.isEmpty){
      emit(GetStoresAndCategoryLoading());
    }else{
      emit(GetStoresLoading());
    }   
    var result = await homeRepo.getStores();
    result.fold((failuer) {
      emit(GetStoresFailuer(failuer.errorMessage));
    }, (response) {
      emit(GetStoresSuccess(response));
    });
  }

  Future<void> getStoresByCategory(String category) async{
    dynamic result;
    emit(GetStoresLoading());
    if(category == 'all'){
      result = await homeRepo.getStores();
    }else{
      result = await homeRepo.getStoresByCategory(category);
    }
    result.fold((failuer){
      emit(GetStoresFailuer(failuer.errorMessage));
    }, (response){
      emit(GetStoresSuccess(response));
    });
  }

  Future<void> getStoresByLocation(String location) async{
    dynamic result;
    emit(GetStoresLoading());
    if(location == 'all'){
      result = await homeRepo.getStores();
    }else{
      result = await homeRepo.getStoresByLocation(location);
    }
    result.fold((failuer){
      emit(GetStoresFailuer(failuer.errorMessage));
    }, (response){
      emit(GetStoresSuccess(response));
    });
  }
}
