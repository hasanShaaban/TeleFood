import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/data/models/store_model/datum.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restaurant_card_info.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key, required this.data});

  final Datum? data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kShopViewRouter);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
        child: Container(
          height: 135,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 4))
              ],
              color: kWhiteColor),
          child: data != null ? RestaurantCardInfo(data: data!):null,
        ),
      ),
    );
  }
}
