import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/utils/user_token.dart';

class TipSection extends StatelessWidget {
  const TipSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        const Icon(Icons.move_to_inbox, color: kSecondaryColor,),
        Text('Tip Box: ',
            style: kMvBoli20.copyWith(color: kTextColor)),
        SizedBox(
          width: 100,
          height: 25,
          child: TextField(
            onSubmitted: (value) {
              tip = tip + int.parse(value);
            },
            cursorHeight: 18,
            cursorColor: kSecondaryColor,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            style: kMvBoli14,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(2),
                hintText: 'optional',
                hintStyle: kMvBoli14.copyWith(
                    color: kPrimeryColor.withOpacity(.4)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: kSecondaryColor))),
          ),
        ),
      ],
    );
  }
}