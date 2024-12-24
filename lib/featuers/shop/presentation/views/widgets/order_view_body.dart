import 'package:flutter/material.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/description_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/image_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/submit_button.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/total_price_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/user_order_info.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        MainAppBar(minAppBarHeight: 95),
        SliverToBoxAdapter(
          child: Column(
            children: [
              ImageSection(),
              DescriptionSection(),
              Divider(
                thickness: 2,
                indent: 55,
                endIndent: 55,
              ),
              UserOrderInfo(),
              Divider(
                thickness: 2,
                indent: 55,
                endIndent: 55,
              ),
              TotalPriceSection(),
              SizedBox(height: 10),
              SubmitButton(),
              SizedBox(height: 10),
            ],
          ),
        )
      ],
    );
  }
}



