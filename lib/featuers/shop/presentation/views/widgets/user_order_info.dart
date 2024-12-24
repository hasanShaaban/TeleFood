import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/order_description_textfield.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/order_quantity_section.dart';

class UserOrderInfo extends StatelessWidget {
  const UserOrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your order :',
              style: kCandara18Bold.copyWith(color: kTextColor)),
          const QuantitySection(),
          const SizedBox(height: 10),
          const OrderDescriptionTextFiled()
        ],
      ),
    );
  }
}
