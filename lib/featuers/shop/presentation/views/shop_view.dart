import 'package:flutter/material.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/shop_view_body.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key, required this.data});
  final StoreData data;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ShopViewBody(data: data),
    ));
  }
}
