import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/order_provider.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/cart_view_body.dart';


class CartView extends StatelessWidget {
  const CartView({super.key, required this.cartinfo});

  final CartResponse cartinfo;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OrderProvider()),
      ],
      child: SafeArea(
          child: Scaffold(
        body: CartViewBody(
          cartinfo: cartinfo,
        ),
      )),
    );
  }
}


