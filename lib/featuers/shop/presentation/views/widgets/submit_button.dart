
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/basket_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_model.dart';
import 'package:telefood/featuers/shop/presentation/manager/order_cubit/order_cubit.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    BasketProvider provider = Provider.of<BasketProvider>(context, listen: false);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            shadowColor: Colors.black,
            elevation: 6,
            minimumSize: const Size(150, 54),
            backgroundColor: kSecondaryColor),
        onPressed: () {
          OrderModel orderModel = OrderModel(
            id: provider.id!,
            quantity: provider.quantity!,
            description: provider.description!
          );
          BlocProvider.of<OrderCubit>(context).postOrder(orderModel: orderModel);
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Submit', style: kMvBoli20),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.login)
          ],
        ));
  }
}
