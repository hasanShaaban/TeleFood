import 'package:flutter/material.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: OrderViewBody(),
    ));
  }
}

