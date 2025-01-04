import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.data});

  final ProductsData data;

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
          Text(data.productName!,
              style: kMvBoli30.copyWith(color: kSecondaryColor)),
          Text(
            data.description!,
            style: kMvBoli14.copyWith(color: kPrimeryColor),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text('Single price: ${data.price}',
                  style: kMvBoli24.copyWith(color: kPrimeryColor)),
              Text('S.P', style: kMvBoli24.copyWith(color: kTextColor))
            ],
          )
        ],
      ),
    );
  }
}
