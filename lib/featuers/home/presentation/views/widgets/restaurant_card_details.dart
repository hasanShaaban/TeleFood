import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class RestaurantCardDetails extends StatelessWidget {
  const RestaurantCardDetails({
    super.key, required this.info, required this.value, this.icon,
  });
  final String info;
  final String value;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(info, style: kMvBoli14.copyWith(color: kSecondaryColor)),
        const SizedBox(width: 20,),
        Text(value, style: kMvBoli14.copyWith(color: kPrimeryColor.withOpacity(0.4))),
        Icon(icon, color: kTextColor,size: 14,)
      ],
    );
  }
}
