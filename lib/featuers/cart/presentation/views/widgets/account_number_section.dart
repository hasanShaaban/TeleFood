import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class AccountNumberSection extends StatefulWidget {
  const AccountNumberSection({
    super.key,
  });

  @override
  State<AccountNumberSection> createState() => _AccountNumberSectionState();
}

class _AccountNumberSectionState extends State<AccountNumberSection> {
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
                  setState(() {
                    accountNum = value;
                  });
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