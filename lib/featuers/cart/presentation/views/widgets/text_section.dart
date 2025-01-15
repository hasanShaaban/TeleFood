import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/order_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.totalPrice,
  });

  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.info,
          color: kSecondaryColor,
        ),
        Text(
          'you are about to pay: $totalPrice S.P using: ${paymentWay == 'way' ? '-----' : paymentWay} cash\n account number: ${context.watch<OrderProvider>().payId ?? '------'}, phone number:$userPhoneNumber ',
          style: kCandara20.copyWith(color: kPrimeryColor, fontSize: 18),
        ),
      ],
    );
  }
}
