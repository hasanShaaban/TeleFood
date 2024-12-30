import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/meal_gird_view.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/restaurant_info_presentaion.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key, required this.data});
  final StoreData data;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics:const BouncingScrollPhysics(),
      slivers: [
        const MainAppBar(minAppBarHeight: 95),
        RstaurantInfoPresentaion(data: data),
        const  MealGridView()
      ],
    );
  }
}
