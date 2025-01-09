import 'package:flutter/material.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/order_info_card.dart';

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
    required this.cartinfo,
  });

  final CartResponse cartinfo;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: cartinfo.data!.length,
                  itemBuilder: (context, index) => OrderInfoCard(
                        data: cartinfo.data![index],
                      )),
            ],
          ),
        ),
      ),
    );
  }
}