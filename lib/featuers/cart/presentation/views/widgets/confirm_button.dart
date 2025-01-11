import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/order_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/cart/presentation/manager/confirm_order_cubit/confirm_order_cubit.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    OrderProvider provider = Provider.of<OrderProvider>(context, listen: false);
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
          String location = provider.location?? userLocation!;
          int? tips = provider.tips;
          int id = provider.payId ?? 0;
          BlocProvider.of<ConfirmOrderCubit>(context).confirmOrder(location: location, id: id, tips: tips);
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Confirm', style: kMvBoli20),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.payments_outlined)
          ],
        ));
  }
}
