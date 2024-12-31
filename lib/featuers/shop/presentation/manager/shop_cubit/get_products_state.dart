part of 'get_products_cubit.dart';

abstract class GetProductsState extends Equatable {
  const GetProductsState();

  @override
  List<Object> get props => [];
}

final class GetProductsInitial extends GetProductsState {}

final class GetProductsLoading extends GetProductsState {}

final class GetProductsFailuer extends GetProductsState {
  final String errorMessage;
  const GetProductsFailuer(this.errorMessage);
}

final class GetProductsSuccess extends GetProductsState {
  final ProductsModel response;
  const GetProductsSuccess(this.response);
}
