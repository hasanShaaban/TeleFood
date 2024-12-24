import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';



class QuantitySection extends StatelessWidget {
  const QuantitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Select quantity: ', style: kMvBoli20.copyWith(color: kPrimeryColor)),
        SizedBox(
          width: 30,
          height: 25,
          child: TextField(
            cursorHeight: 18,
            cursorColor: kSecondaryColor,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            style: kMvBoli14,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.all(2),
              hintText: '0',
              hintStyle: kMvBoli14.copyWith(color: kPrimeryColor.withOpacity(.4)),
              filled: true,
              fillColor: Colors.white,
              enabledBorder:const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: kSecondaryColor))
            ),
          ),
        ),
      ],
    );
  }
}