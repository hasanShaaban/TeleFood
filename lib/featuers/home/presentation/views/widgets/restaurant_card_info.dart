import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restaurant_card_details.dart';

class RestaurantCardInfo extends StatelessWidget {
  const RestaurantCardInfo({
    required this.data,
    super.key,
  });

  final StoreData data;

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
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(data.imageUrl!),
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
              SizedBox(
                width: 177,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.name!,
                      style: kCandara18Bold.copyWith(color: kPrimeryColor),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          size: 18,
                        ))
                  ],
                ),
              ),
              RestaurantCardDetails(
                info: 'Location:',
                value: data.locations![0].governorate!,
              ),
              const RestaurantCardDetails(
                info: 'Category:',
                value: 'fast food',
              ),
              RestaurantCardDetails(
                info: 'Rate:',
                value: '${data.rate}',
                icon: Icons.star_sharp,
              ),
            ],
          )
        ],
      ),
    );
  }
}
