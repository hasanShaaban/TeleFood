import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/basket_provider.dart';
import 'package:telefood/core/utils/constant.dart';

class OrderDescriptionTextFiled extends StatelessWidget {
  const OrderDescriptionTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextField(
        onChanged: (value) {
          if(value == ''){
            value = 'no description';
          }
          context.read<BasketProvider>().setDescription(newDescription: value);
        },
        cursorColor: kSecondaryColor,
        cursorHeight: 18,
        expands: true,
        minLines: null,
        maxLines: null,
        textAlignVertical: TextAlignVertical.top,
        style: kMvBoli18,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            label: const Text('Add a description:'),
            labelStyle:
                kMvBoli18.copyWith(color: kPrimeryColor.withOpacity(.4)),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(22)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: const BorderSide(color: kSecondaryColor))),
      ),
    );
  }
}
