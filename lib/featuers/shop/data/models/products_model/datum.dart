import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final int? productId;
  final String? productName;
  final String? description;
  final String? price;
  final String? imgeUrl;

  const Datum({
    this.productId,
    this.productName,
    this.description,
    this.price,
    this.imgeUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        productId: json['product_id'] as int?,
        productName: json['product_name'] as String?,
        description: json['description'] as String?,
        price: json['price'] as String?,
        imgeUrl: json['imge_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'product_id': productId,
        'product_name': productName,
        'description': description,
        'price': price,
        'imge_url': imgeUrl,
      };

  @override
  List<Object?> get props {
    return [
      productId,
      productName,
      description,
      price,
      imgeUrl,
    ];
  }
}
