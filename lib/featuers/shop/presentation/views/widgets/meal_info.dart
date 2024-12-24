import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Crispy', style: kMvBoli20.copyWith(color: kPrimeryColor)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('price: 60 000',
                style: kMvBoli14.copyWith(color: kPrimeryColor)),
            Text('S.P', style: kMvBoli14.copyWith(color: kTextColor))
          ],
        )
      ],
    );
  }
}
