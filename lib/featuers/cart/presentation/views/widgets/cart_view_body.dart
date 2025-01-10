import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/main_appbar.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_data.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/order_listv_iew.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/submit_button.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key, required this.cartinfo});
  final CartResponse cartinfo;

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  int totalPrice = 0;
  int tip = 0;
  @override
  Widget build(BuildContext context) {
    int orderPrice = 0;
    for (CartData item in widget.cartinfo.data!) {
      orderPrice = orderPrice + int.parse(item.totalPrice!);
    }
    int deliveryFee = 1500;
    totalPrice = orderPrice + deliveryFee + tip;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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
        OrdersListView(cartinfo: widget.cartinfo),
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
                    Text('$orderPrice S.P',
                        style: kMvBoli20.copyWith(color: kTextColor))
                  ],
                ),
                const Divider(thickness: 2),
                Row(
                  children: [
                    const Icon(
                      Icons.delivery_dining_outlined,
                      color: kSecondaryColor,
                    ),
                    Text('Delivery fees: ',
                        style: kMvBoli20.copyWith(color: kPrimeryColor)),
                    Text('1500 S.P',
                        style: kMvBoli20.copyWith(color: kTextColor)),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.move_to_inbox,
                      color: kSecondaryColor,
                    ),
                    Text('Tip Box: ',
                        style: kMvBoli20.copyWith(color: kTextColor)),
                    SizedBox(
                      width: 100,
                      height: 25,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            tip = int.tryParse(value) ?? 0;
                            totalPrice = orderPrice + deliveryFee + tip;
                          });
                        },
                        cursorHeight: 18,
                        cursorColor: kSecondaryColor,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.center,
                        style: kMvBoli14,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(2),
                            hintText: 'optional',
                            hintStyle: kMvBoli14.copyWith(
                                color: kPrimeryColor.withOpacity(.4)),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: const OutlineInputBorder(),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kSecondaryColor))),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                  height: 26,
                ),
                Row(
                  children: [
                    Text('Total Price: ',
                        style: kMvBoli20.copyWith(color: kPrimeryColor)),
                    Text('$totalPrice S.P',
                        style: kMvBoli20.copyWith(color: kTextColor)),
                  ],
                ),
                const SizedBox(height: 60),
                SubmitButton(totalPrice: totalPrice)
              ],
            ),
          ),
        )
      ],
    );
  }
}
