part of 'order_cubit.dart';

abstract class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object> get props => [];
}

final class OrderInitial extends OrderState {}

final class OrderSuccess extends OrderState {
  final OrderResponse response;
  const OrderSuccess(this.response);
}

final class OrderLoading extends OrderState {}

final class OrderFailuer extends OrderState {
  final String errorMessage;
  const OrderFailuer(this.errorMessage);
}
