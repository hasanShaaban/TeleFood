part of 'get_stores_cubit.dart';

abstract class GetStoresState extends Equatable {
  const GetStoresState();

  @override
  List<Object> get props => [];
}

final class GetStoresInitial extends GetStoresState {}

final class GetStoresLoading extends GetStoresState {}

final class GetStoresAndCategoryLoading extends GetStoresState {}

final class GetStoresFailuer extends GetStoresState {
  final String errorMessage;
  const GetStoresFailuer(this.errorMessage);
}

final class GetStoresSuccess extends GetStoresState {
  final StoreModel response;
  const GetStoresSuccess(this.response);
}
