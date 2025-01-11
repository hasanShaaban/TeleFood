
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/favoutite/data/repo/fav_repo_impl.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_model.dart';


part 'get_favourite_state.dart';

class GetFavouriteCubit extends Cubit<GetFavouriteState> {
  GetFavouriteCubit(this.favRepo) : super(GetFavouriteInitial());

  final FavRepoImpl favRepo;
  Future<void> getFavouiteProds()async{
    emit(GetFavouriteLoading());
    var result = await favRepo.getFavouiteProds();
    result.fold((failuer){
      emit(GetFavouriteFailuer(failuer.errorMessage));
    }, (response){
      emit(GetFavouriteSuccess(response));
    });
  }
}
