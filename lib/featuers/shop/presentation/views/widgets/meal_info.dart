import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({super.key, required this.data});

  final ProductsData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(data.productName!,
            style: kMvBoli20.copyWith(color: kPrimeryColor)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.price!, style: kMvBoli14.copyWith(color: kPrimeryColor)),
            Text('S.P', style: kMvBoli14.copyWith(color: kTextColor))
          ],
        )
      ],
    );
  }
}
