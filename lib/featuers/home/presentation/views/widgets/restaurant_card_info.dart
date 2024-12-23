import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restaurant_card_details.dart';

class RestaurantCardInfo extends StatelessWidget {
  const RestaurantCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Row(
        children: [
          Container(
            width: 132,
            height: 88,
            decoration: BoxDecoration(
              border: Border.all(color: kPrimeryColor, width: 2),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Rest.jpg'),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Sham Foods',
                    style: kCandara18Bold.copyWith(color: kPrimeryColor),
                  ),
                  const SizedBox(width: 60),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_border_rounded,
                        size: 18,
                      ))
                ],
              ),
              const RestaurantCardDetails(
                info: 'Location:',
                value: 'Damascus',
              ),
              const RestaurantCardDetails(
                info: 'Category:',
                value: 'Fast Food',
              ),
              const RestaurantCardDetails(
                info: 'Rate:',
                value: '4.5',
                icon: Icons.star_sharp,
              ),
            ],
          )
        ],
      ),
    );
  }
}
