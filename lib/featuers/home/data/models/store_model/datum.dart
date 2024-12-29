import 'package:equatable/equatable.dart';

import 'location.dart';

class Datum extends Equatable {
  final int? storeId;
  final String? name;
  final String? description;
  final String? rate;
  final String? imageUrl;
  final List<Location>? locations;

  const Datum({
    this.storeId,
    this.name,
    this.description,
    this.rate,
    this.imageUrl,
    this.locations,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        storeId: json['store_id'] as int?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        rate: json['rate'] as String?,
        imageUrl: json['image_url'] as String?,
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
      locations,
    ];
  }
}
