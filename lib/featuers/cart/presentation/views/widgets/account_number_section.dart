import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/order_provider.dart';
import 'package:telefood/core/utils/constant.dart';

class AccountNumberSection extends StatelessWidget {
  const AccountNumberSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.payment, color: kSecondaryColor,),
        Text('account number : ', style: kMvBoli20.copyWith(color: kSecondaryColor),),
        SizedBox(
              width: 150,
              height: 33,
              child: TextField(
                onChanged: (value) {
                  
                  context.read<OrderProvider>().setPayId(int.tryParse(value));
                },
                cursorHeight: 18,
                cursorColor: kSecondaryColor,
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                style: kMvBoli14,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(2),
                    hintText: '112233',
                    hintStyle: kMvBoli14.copyWith(
                        color: kPrimeryColor.withOpacity(.4)),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                        borderSide:
                            const BorderSide(color: kSecondaryColor))),
              ),
            ),
      ],
    
    );
  }
}