import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/basket_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/shop/data/models/products_model/products_data.dart';


class QuantitySection extends StatelessWidget {
  const QuantitySection({super.key,required this.data});
final ProductsData data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Select quantity: ',
            style: kMvBoli20.copyWith(color: kPrimeryColor)),
        SizedBox(
          width: 30,
          height: 25,
          child: TextField(
            onChanged: (value) {
              context.read<BasketProvider>().setQuantity(newQuantity: value);
              context.read<BasketProvider>().setId(newId: data.productId!.toString());
            },
            cursorHeight: 18,
            cursorColor: kSecondaryColor,
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.center,
            style: kMvBoli14,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(2),
                hintText: '0',
                hintStyle:
                    kMvBoli14.copyWith(color: kPrimeryColor.withOpacity(.4)),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: kSecondaryColor))),
          ),
        ),
      ],
    );
  }
}
