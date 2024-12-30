import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/description_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/image_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/submit_button.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/total_price_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/user_order_info.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key, required this.data});

  final ProductsData data;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const MainAppBar(minAppBarHeight: 95),
        SliverToBoxAdapter(
          child: Column(
            children: [
              ImageSection(urlImage: data.imgeUrl!),
              DescriptionSection(data: data),
              const Divider(
                thickness: 2,
                indent: 55,
                endIndent: 55,
              ),
              const UserOrderInfo(),
              const Divider(
                thickness: 2,
                indent: 55,
                endIndent: 55,
              ),
              const TotalPriceSection(),
              const SizedBox(height: 10),
              const SubmitButton(),
              const SizedBox(height: 10),
            ],
          ),
        )
      ],
    );
  }
}
