import 'package:equatable/equatable.dart';

import 'store_data.dart';

class StoreModel extends Equatable {
  final List<StoreData>? data;

  const StoreModel({this.data});

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => StoreData.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
