import 'package:equatable/equatable.dart';

import 'data.dart';

class UserModel extends Equatable {
  final Data? data;

  const UserModel({this.data});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };

  @override
  List<Object?> get props => [data];
}
