part of 'category_cubit.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

final class CategoryInitial extends CategoryState {}

final class CategoryLoading extends CategoryState {}

final class CategorySuccess extends CategoryState {
  final CategoryModel categoryModel;
  const CategorySuccess(this.categoryModel);
}

final class CategoryFailuer extends CategoryState {
  final String errorMessage;
  const CategoryFailuer(this.errorMessage);
}
