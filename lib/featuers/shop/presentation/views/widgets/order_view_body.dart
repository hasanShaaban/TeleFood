import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/description_section.dart';
import 'package:telefood/featuers/shop/presentation/views/widgets/image_section.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        MainAppBar(minAppBarHeight: 95),
        SliverToBoxAdapter(
          child: Column(
            children: [ImageSection(), DescriptionSection(), Divider(), UserOrderInfo()],
          ),
        )
      ],
    );
  }
}

class UserOrderInfo extends StatelessWidget {
  const UserOrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your order :',
                  style: kCandara18Bold.copyWith(color: kTextColor)),
        ],
      ),
    );
  }
}


