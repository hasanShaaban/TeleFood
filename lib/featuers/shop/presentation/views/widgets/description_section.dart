import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('order description :',
                  style: kCandara18Bold.copyWith(color: kTextColor)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: kPrimeryColor.withOpacity(.4),
                    size: 30,
                  ))
            ],
          ),
          Text('Crispy', style: kMvBoli30.copyWith(color: kSecondaryColor)),
          Text(
            '6 Crispy fried chicken slices with a French fries, sweat and hot sauce boxes, with Russian salad',
            style: kMvBoli14.copyWith(color: kPrimeryColor),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('Single price: 60 000',
                  style: kMvBoli24.copyWith(color: kPrimeryColor)),
              Text('S.P', style: kMvBoli24.copyWith(color: kTextColor))
            ],
          )
        ],
      ),
    );
  }
}
