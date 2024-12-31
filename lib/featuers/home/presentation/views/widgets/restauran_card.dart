import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/data/models/store_model/store_data.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/restaurant_card_info.dart';
import 'package:telefood/featuers/shop/presentation/manager/shop_cubit/get_products_cubit.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key, required this.data});

  final StoreData? data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<GetProductsCubit>(context)
            .getProducts(storeName: data!.name!);
        GoRouter.of(context).push(AppRouter.kShopViewRouter, extra: data);
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
          child: data != null ? RestaurantCardInfo(data: data!) : null,
        ),
      ),
    );
  }
}
