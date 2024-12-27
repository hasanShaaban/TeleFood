
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/featuers/auth/data/models/registration_model.dart';
import 'package:telefood/featuers/auth/data/models/registration_response.dart';
import 'package:telefood/featuers/auth/data/repo/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;
  Future<void> signupRequest(RegistrationModel registrationModel) async {
    emit(SignupLoading());
    var result = await authRepo.signupRequest(registrationModel: registrationModel);

    result.fold((failuer) {
      emit(SignupFailuer(failuer.errorMessage));
    }, (response) {
      emit(SignupSuccess(response));
    });
  }
}
