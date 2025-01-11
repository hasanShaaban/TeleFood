import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telefood/bloc_providers.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_data.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/manager/cart_cubit/cart_cubit.dart';
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
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: cartinfo.data!.length,
                  itemBuilder: (context, index) => Dismissible(
                        movementDuration: const Duration(
                            microseconds: 50), // Slightly slower swipe motion
                        dismissThresholds: const {
                          DismissDirection.startToEnd: 0.7,
                        },
                        confirmDismiss: (direction) async {
                          if (direction == DismissDirection.startToEnd) {
                            return await showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22)),
                                  title: const Icon(
                                    Icons.warning_amber,
                                    color: Colors.red,
                                  ),
                                  content: Text(
                                    'are you sure you want to delete this order?',
                                    style: kCandara20.copyWith(
                                        color: kPrimeryColor),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () async {
                                          try {
                                            await apiService.deleteOrder(
                                                endPoints: 'basket/delete/',
                                                cartId: cartinfo
                                                    .data![index].cartId!);
                                          } catch (e) {
                                            if (e is DioException) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content:
                                                          Text(e.message!)));
                                            }
                                          }
                                          BlocProvider.of<CartCubit>(context)
                                              .getCartInfo();
                                          return Navigator.of(context)
                                              .pop(true);
                                        },
                                        child: const Text('Yes')),
                                    TextButton(
                                        onPressed: () {
                                          return Navigator.of(context)
                                              .pop(false);
                                        },
                                        child: const Text('No'))
                                  ],
                                );
                              },
                            );
                          }
                          return false;
                        },
                        background: SizedBox(
                          height: 120,
                          child: Row(
                            children: [
                              Text(
                                'Delete',
                                style: kMvBoli20.copyWith(color: Colors.red),
                                textAlign: TextAlign.left,
                              ),
                              const Icon(
                                Icons.delete_outline,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        key: ValueKey<CartData>(cartinfo.data![index]),
                        child: OrderInfoCard(
                          data: cartinfo.data![index],
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
