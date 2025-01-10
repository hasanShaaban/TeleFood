import 'package:flutter/material.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/order_view_body.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key, required this.extra});
  final Map<String, dynamic> extra;
  
  @override
  Widget build(BuildContext context) {
    final ProductsData data = extra['data'] as ProductsData;
  final String? target = extra['target'];
    return SafeArea(
        child: Scaffold(
      body: OrderViewBody(data: data, target: target,),
    ));
  }
}
