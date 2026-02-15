import 'package:equatable/equatable.dart';

import 'search_data.dart';

class SearchModel extends Equatable {
  final SearchData? data;

  const SearchModel({this.data});

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        data: json['data'] == null
            ? null
            : SearchData.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.toJson(),
      };

  @override
  List<Object?> get props => [data];
}
