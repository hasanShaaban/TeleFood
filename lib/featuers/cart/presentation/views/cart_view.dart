import 'package:flutter/material.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.cartinfo});

  final CartResponse cartinfo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CartViewBody(
        cartinfo: cartinfo,
      ),
    ));
  }
}
