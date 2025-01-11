part of 'confirm_order_cubit.dart';

abstract class ConfirmOrderState extends Equatable {
  const ConfirmOrderState();

  @override
  List<Object> get props => [];
}

final class ConfirmOrderInitial extends ConfirmOrderState {}
final class ConfirmOrderLoading extends ConfirmOrderState {}
final class ConfirmOrderSuccess extends ConfirmOrderState {
  final ConfirmOrderResponse response;
  const ConfirmOrderSuccess(this.response);
}
final class ConfirmOrderFailuer extends ConfirmOrderState {
  final String errorMessage;
  const ConfirmOrderFailuer(this.errorMessage);
}

