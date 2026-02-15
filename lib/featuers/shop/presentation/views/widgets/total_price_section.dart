import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/basket_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';

// ignore: must_be_immutable
class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({super.key, required this.data});
  final ProductsData data;

  @override
  Widget build(BuildContext context) {
    return Consumer<BasketProvider>(
      builder: (context, value, child) {
        int totalPrice = 0;
        if (value.quantity != null && value.quantity != '') {
          totalPrice = int.parse(value.quantity!) * int.parse(data.price!);
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            children: [
              Text('total price: ',
                  style: kCandara18Bold.copyWith(color: kTextColor)),
              Text(totalPrice.toString(),
                  style: kMvBoli18.copyWith(color: kPrimeryColor)),
              Text(' S.P', style: kMvBoli18.copyWith(color: kTextColor)),
            ],
          ),
        );
      },
    );
  }
}
