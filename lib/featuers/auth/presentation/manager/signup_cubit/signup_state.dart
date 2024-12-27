part of 'signup_cubit.dart';

sealed class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}
final class SignupLoading extends SignupState {}

final class SignupFailuer extends SignupState {
  final String errorMessage;
  const SignupFailuer(this.errorMessage);
}

final class SignupSuccess extends SignupState {
  final  RegistrationResponse response;

  const SignupSuccess(this.response);
}