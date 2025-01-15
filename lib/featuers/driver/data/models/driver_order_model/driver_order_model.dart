import 'package:equatable/equatable.dart';

import 'driver_order_data.dart';

class DriverOrderModel extends Equatable {
  final List<DriverOrderData>? data;

  const DriverOrderModel({this.data});

  factory DriverOrderModel.fromJson(Map<String, dynamic> json) {
    return DriverOrderModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DriverOrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
