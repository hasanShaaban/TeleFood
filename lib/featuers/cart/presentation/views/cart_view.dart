import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_data.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/order_listv_iew.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/tip_section.dart';

class CartView extends StatelessWidget {
  const CartView({super.key, required this.cartinfo});

  final CartResponse cartinfo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CartViewBody(
      cartinfo: cartinfo,
    )));
  }
}

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.cartinfo});
  final CartResponse cartinfo;

  @override
  Widget build(BuildContext context) {
    int price = 0;
    for (CartData item in cartinfo.data!) {
      price = price + int.parse(item.totalPrice!);
    }
    int totalPrice = price + 1500 + tip;
    return CustomScrollView(
      slivers: [
        const MainAppBar(minAppBarHeight: 95),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 23, top: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Cart',
                  style: kMvBoli20.copyWith(color: kPrimeryColor),
                ),
              ],
            ),
          ),
        ),
        OrdersListView(cartinfo: cartinfo),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 23, top: 29, right: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Order Price: ',
                        style: kMvBoli20.copyWith(color: kPrimeryColor)),
                    Text('$price S.P',
                        style: kMvBoli20.copyWith(color: kTextColor))
                  ],
                ),
                const Divider(thickness: 2),
                Row(
                  children: [
                    const Icon(Icons.delivery_dining_outlined, color: kSecondaryColor,),
                    Text('Delivery fees: ',
                        style: kMvBoli20.copyWith(color: kPrimeryColor)),
                    Text('1500 S.P',
                        style: kMvBoli20.copyWith(color: kTextColor)),
                  ],
                ),
                const TipSection(),
                const Divider(thickness: 2, height: 26,),
                Row(
                  children: [
                    Text('Total Price: ',
                        style: kMvBoli20.copyWith(color: kPrimeryColor)),
                    Text('$totalPrice S.P',
                        style: kMvBoli20.copyWith(color: kTextColor))
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


