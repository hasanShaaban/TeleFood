import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/data/category/category_model/category_model.dart';
import 'package:telefood/core/data/category/category_repo/category_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.repo) : super(CategoryInitial());
  CategoryRepo repo;

  Future<void> getCategory() async {
    emit(CategoryLoading());
    var result = await repo.getCategory();
    result.fold((failuer) {
      emit(CategoryFailuer(failuer.errorMessage));
    }, (response) {
      emit(CategorySuccess(response));
    });
  }
}
