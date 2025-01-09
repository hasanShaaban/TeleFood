import 'package:flutter/material.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key, required this.data});
  final ProductsData data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: OrderViewBody(data: data,),
    ));
  }
}
