import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class TextSection extends StatefulWidget {
  const TextSection({
    super.key,
    required this.totalPrice,
  });

  final String totalPrice;

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
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
          'you are about to pay: ${widget.totalPrice} S.P using: ${paymentWay == 'way' ? '-----' : paymentWay} cash\n account number: ${accountNum ?? '------'}, phone number:$userPhoneNumber ',
          style: kCandara20.copyWith(color: kPrimeryColor, fontSize: 18),
        ),
      ],
    );
  }
}
