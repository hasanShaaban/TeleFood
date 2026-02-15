import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class PaymentWay extends StatefulWidget {
  const PaymentWay({super.key});

  @override
  State<PaymentWay> createState() => _PaymentWayState();
}

class _PaymentWayState extends State<PaymentWay> {
  String select = 'way';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if (select == 'syriatel') {
              setState(() {
                select = 'way';
              });
            } else {
              setState(() {
                select = 'syriatel';
              });
            }
            setState(() {
              paymentWay = select;
            });
          },
          child: Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(37),
                  bottomLeft: Radius.circular(37)),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/syriatel.png',
                  ),
                  fit: BoxFit.cover),
              border: Border.all(
                color: select == 'syriatel' ? kPrimeryColor : kWhiteColor,
                width: 2,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (select == 'mtn') {
              setState(() {
                select = 'way';
              });
            } else {
              setState(() {
                select = 'mtn';
                paymentWay = select;
              });
            }
            setState(() {
              paymentWay = select;
            });
          },
          child: Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(37),
                  bottomRight: Radius.circular(37)),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/mtn.png',
                  ),
                  fit: BoxFit.cover),
              border: Border.all(
                color: select == 'mtn' ? kPrimeryColor : kWhiteColor,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
