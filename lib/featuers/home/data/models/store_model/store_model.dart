import 'package:equatable/equatable.dart';

import 'datum.dart';

class StoreModel extends Equatable {
  final List<Datum>? data;

  const StoreModel({this.data});

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}
