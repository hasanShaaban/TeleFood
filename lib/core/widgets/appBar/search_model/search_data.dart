import 'package:equatable/equatable.dart';

import 'location.dart';

class SearchData extends Equatable {
  final int? storeId;
  final String? name;
  final String? description;
  final String? rate;
  final String? imageUrl;
  final String? category;
  final List<Location>? locations;

  const SearchData({
    this.storeId,
    this.name,
    this.description,
    this.rate,
    this.imageUrl,
    this.category,
    this.locations,
  });

  factory SearchData.fromJson(Map<String, dynamic> json) => SearchData(
        storeId: json['store_id'] as int?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        rate: json['rate'] as String?,
        imageUrl: json['image_url'] as String?,
        category: json['category'] as String?,
        locations: (json['locations'] as List<dynamic>?)
            ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'store_id': storeId,
        'name': name,
        'description': description,
        'rate': rate,
        'image_url': imageUrl,
        'category': category,
        'locations': locations?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      storeId,
      name,
      description,
      rate,
      imageUrl,
      category,
      locations,
    ];
  }
}
