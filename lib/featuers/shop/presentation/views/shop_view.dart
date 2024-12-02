import 'package:flutter/material.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/shop_view_body.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: ShopViewBody(),
    ));
  }
}



