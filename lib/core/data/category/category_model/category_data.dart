import 'package:equatable/equatable.dart';

class CategoryData extends Equatable {
  final String? type;

  const CategoryData({this.type});

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'type': type,
      };

  @override
  List<Object?> get props => [type];
}
