import 'package:equatable/equatable.dart';

import 'products_data.dart';

class ProductsModel extends Equatable {
  final List<ProductsData>? data;

  const ProductsModel({this.data});

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => ProductsData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
