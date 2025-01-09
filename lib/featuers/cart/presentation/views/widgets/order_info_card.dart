import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_data.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';


class OrderInfoCard extends StatelessWidget {
  const OrderInfoCard({super.key, required this.data});

  

  final CartData data;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 150,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(0, 4))
          ],
          borderRadius: BorderRadius.circular(22),
          color: kSecondaryColor,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22),
              width: 132,
              height: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(data.imageUrl!),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(data.name!,
                        style: kMvBoli24.copyWith(color: kWhiteColor)),
                  ],
                ),
                Row(
                  children: [
                    Text('quantity: ',
                        style: kMvBoli18.copyWith(color: kWhiteColor)),
                    Text(data.quantity!,
                        style: kMvBoli18.copyWith(color: kTextColor))
                  ],
                ),
                Row(
                  children: [
                    Text('total price: ',
                        style: kMvBoli18.copyWith(color: kWhiteColor)),
                    Text(data.totalPrice!,
                        style: kMvBoli18.copyWith(color: kTextColor))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      Positioned(
        left: 300,
        child: IconButton(
            onPressed: () {
              ProductsData? product;
              for(ProductsData item in products!){
                if(item.productId! == data.productId){
                  product = item;
                }
              }
              GoRouter.of(context).push(AppRouter.kOrderViewRouter, extra: product);
            },
            icon: const Icon(
              Icons.edit_outlined,
              size: 24,
              color: kWhiteColor,
            )),
      )
    ]);
  }
}
