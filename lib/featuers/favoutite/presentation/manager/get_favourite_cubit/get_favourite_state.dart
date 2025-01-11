part of 'get_favourite_cubit.dart';

sealed class GetFavouriteState extends Equatable {
  const GetFavouriteState();

  @override
  List<Object> get props => [];
}

final class GetFavouriteInitial extends GetFavouriteState {}

final class GetFavouriteLoading extends GetFavouriteState {}

final class GetFavouriteSuccess extends GetFavouriteState {
  final ProductsModel response;
  const GetFavouriteSuccess(this.response);
}

final class GetFavouriteFailuer extends GetFavouriteState {
  final String errorMessage;
  const GetFavouriteFailuer(this.errorMessage);
}
