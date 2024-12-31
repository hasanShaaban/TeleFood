import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/core/widgets/drawer/repo/userInfo_repo.dart';
import 'package:telefood/core/widgets/drawer/user_model/user_model.dart';

part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit(this.userinfoRepo) : super(UserInfoInitial());

  final UserinfoRepo userinfoRepo;
  Future<void> getUserInfo() async {
    emit(UserInfoLoading());
    var result = await userinfoRepo.getUserInfo();
    result.fold((failuer) {
      emit(UserInfoFailuer(failuer.errorMessage));
    }, (response) {
      emit(UserInfoSuccess(response));
    });
  }
}
