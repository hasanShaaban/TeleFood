import 'package:equatable/equatable.dart';

import 'cart_data.dart';

class CartResponse extends Equatable {
  final List<CartData>? data;

  const CartResponse({this.data});

  factory CartResponse.fromJson(Map<String, dynamic> json) => CartResponse(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => CartData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
