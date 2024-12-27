import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        children: [
          Text('total price: ',
              style: kCandara18Bold.copyWith(color: kTextColor)),
          Text('120 000', style: kMvBoli18.copyWith(color: kPrimeryColor)),
          Text(' S.P', style: kMvBoli18.copyWith(color: kTextColor)),
        ],
      ),
    );
  }
}
