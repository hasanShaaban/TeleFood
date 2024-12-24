part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginFailuer extends LoginState {
  final String errorMessage;
  const LoginFailuer(this.errorMessage);
}
final class LoginSuccess extends LoginState {
  final LoginResponse response;

  const LoginSuccess(this.response);
}
