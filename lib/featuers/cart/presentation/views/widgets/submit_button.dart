import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';
import 'package:telefood/featuers/cart/data/models/cart_response/cart_response.dart';
import 'package:telefood/featuers/cart/presentation/views/widgets/payment_page.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.totalPrice, required this.cartinfo,
  });

  final int totalPrice;
  final CartResponse cartinfo;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              shadowColor: Colors.black,
              elevation: 6,
              minimumSize: const Size(150, 54),
              backgroundColor: kSecondaryColor),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(87),
                ),
              ),
              builder: (BuildContext context) {
                return PaymentPage(cartinfo: cartinfo,
                  totalPrice: totalPrice.toString(),
                );
              },
            ).whenComplete(() {
              paymentWay = 'way';
              accountNum = null;
            });
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Payment Page', style: kMvBoli20),
              SizedBox(
                width: 7,
              ),
              Icon(Icons.payments_outlined)
            ],
          )),
    );
  }
}
