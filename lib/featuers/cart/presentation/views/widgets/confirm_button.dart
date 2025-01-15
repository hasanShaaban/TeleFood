import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/order_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/manager/confirm_order_cubit/confirm_order_cubit.dart';

class ConfirmButton extends StatefulWidget {
  const ConfirmButton({
    super.key, required this.cartinfo, 
  });
final CartResponse cartinfo;

  @override
  State<ConfirmButton> createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
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
          setState(() {
            widget.cartinfo.data!.clear();
          });
          String location = provider.location?? userLocation!;
          int? tips = provider.tips;
          int? id = provider.payId;
          BlocProvider.of<ConfirmOrderCubit>(context).confirmOrder(location: location, id: id, tips: tips);
          context.read<OrderProvider>().setPayId(null);
          Navigator.pop(context);
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
