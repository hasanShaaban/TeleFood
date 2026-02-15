import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/auth/data/models/login_model.dart';
import 'package:telefood/featuers/auth/data/models/login_response.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;
  Future<void> loginRequest(LoginModel loginModel) async {
    emit(LoginLoading());
    var result = await authRepo.loginRequest(loginModel: loginModel);

    result.fold((failuer) {
      emit(LoginFailuer(failuer.errorMessage));
    }, (response) {
      emit(LoginSuccess(response));
    });
  }
}
