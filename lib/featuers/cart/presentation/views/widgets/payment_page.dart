import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/account_number_section.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/confirm_button.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/edit_location_section.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/payment_way.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/text_section.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({
    super.key,
    required this.totalPrice, required this.cartinfo,
  });
  final CartResponse cartinfo;

  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(87),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Payment page',
                style: kCandara20.copyWith(color: kPrimeryColor)),
            const SizedBox(
              height: 45,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Your Payment account:',
                  style: kMvBoli20.copyWith(color: kSecondaryColor),
                )),
            const SizedBox(height: 20),
            const PaymentWay(),
            const SizedBox(height: 20),
            const AccountNumberSection(),
            const SizedBox(height: 20),
            const EditLocationSection(),
            const SizedBox(height: 30),
            TextSection(totalPrice: totalPrice),
            const SizedBox(height: 30),
            ConfirmButton(cartinfo: cartinfo,),
          ],
        ),
      ),
    );
  }
}

