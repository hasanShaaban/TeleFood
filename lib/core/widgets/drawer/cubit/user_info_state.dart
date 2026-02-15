part of 'user_info_cubit.dart';

abstract class UserInfoState extends Equatable {
  const UserInfoState();

  @override
  List<Object> get props => [];
}

final class UserInfoInitial extends UserInfoState {}

final class UserInfoLoading extends UserInfoState {}

final class UserInfoSuccess extends UserInfoState {
  final UserModel response;
  const UserInfoSuccess(this.response);
}

final class UserInfoFailuer extends UserInfoState {
  final String errorMessage;
  const UserInfoFailuer(this.errorMessage);
}
