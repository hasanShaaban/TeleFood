import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_image.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_info.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.data});

  final ProductsData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kOrderViewRouter, extra: data);
      },
      child: Container(
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(22),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 3,
                  blurRadius: 6,
                  offset: Offset(0, 5))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [MealImage(data: data), MealInfo(data: data)],
        ),
      ),
    );
  }
}
