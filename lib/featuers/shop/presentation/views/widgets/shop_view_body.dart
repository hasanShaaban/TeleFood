import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_gird_view.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/restaurant_info_presentaion.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        MainAppBar(minAppBarHeight: 95),
        RstaurantInfoPresentaion(),
        MealGridView()
      ],
    );
  }
}