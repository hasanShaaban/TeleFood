part of 'cart_cubit.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}
final class CartLoading extends CartState {}
final class CartSuccess extends CartState {
  final CartResponse response;
  const CartSuccess(this.response);
}
final class CartFailuer extends CartState {
  final String errorMessage;
  const CartFailuer(this.errorMessage);
}
