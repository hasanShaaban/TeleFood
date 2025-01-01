import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/widgets/appBar/repo/search_repo.dart';
import 'package:telefood/core/widgets/appBar/search_model/search_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  Future<void> search({required String value, required bool isSearching}) async {
    if(!isSearching || value == 'null'){
      emit(SearchInitial());
      return;
    }
    emit(SearchLoading());
    var result = await searchRepo.search(value: value);
    result.fold((failuer) {
      emit(SearchFailuer(failuer.errorMessage));
    }, (response) {
      emit(SearchSuccess(response));
    });
  }
}
