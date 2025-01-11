import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/basket_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:telefood/featuers/shop/data/models/order_model/order_model.dart';
import 'package:telefood/featuers/shop/presentation/manager/order_cubit/order_cubit.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, this.target,});
  final String? target;
  @override
  Widget build(BuildContext context) {
    BasketProvider provider =
        Provider.of<BasketProvider>(context, listen: false);
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
          if(provider.id == null || provider.quantity == null){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('some fileds is required')));
          }else if(target == 'edit' && cartId != null){
            OrderModel orderModel = OrderModel(
              id: cartId!,
              quantity: provider.quantity!,
              description: provider.description.toString());
              BlocProvider.of<OrderCubit>(context)
              .updateOrder(orderModel: orderModel);
          }
          else{
          OrderModel orderModel = OrderModel(
              id: provider.id!,
              quantity: provider.quantity!,
              description: provider.description.toString());
          BlocProvider.of<OrderCubit>(context)
              .postOrder(orderModel: orderModel);
          }
          BlocProvider.of<CartCubit>(context).getCartInfo();
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
