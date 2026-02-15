import 'package:equatable/equatable.dart';

class CartData extends Equatable {
  final int? cartId;
  final int? productId;
  final String? name;
  final String? description;
  final String? quantity;
  final dynamic location;
  final String? imageUrl;
  final String? totalPrice;

  const CartData({
    this.cartId,
    this.productId,
    this.name,
    this.description,
    this.quantity,
    this.location,
    this.imageUrl,
    this.totalPrice,
  });

  factory CartData.fromJson(Map<String, dynamic> json) => CartData(
        cartId: json['cart_id'] as int?,
        productId: json['product_id'] as int?,
        name: json['name'] as String?,
        description: json['description'] as String?,
        quantity: json['quantity'] as String?,
        location: json['location'] as dynamic,
        imageUrl: json['image_url'] as String?,
        totalPrice: json['total price'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'cart_id': cartId,
        'product_id': productId,
        'name': name,
        'description': description,
        'quantity': quantity,
        'location': location,
        'image_url': imageUrl,
        'total price': totalPrice,
      };

  @override
  List<Object?> get props {
    return [
      cartId,
      productId,
      name,
      description,
      quantity,
      location,
      imageUrl,
      totalPrice,
    ];
  }
}
