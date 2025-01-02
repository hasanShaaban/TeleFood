import 'package:equatable/equatable.dart';

import 'category_data.dart';

class CategoryModel extends Equatable {
  final List<CategoryData>? data;

  const CategoryModel({this.data});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
