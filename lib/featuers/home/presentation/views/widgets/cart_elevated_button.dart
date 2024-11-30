import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class CartElevatedButton extends StatelessWidget {
  const CartElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ButtonStyle(
        
        backgroundColor:const WidgetStatePropertyAll(kSecondaryColor),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27))),
        fixedSize:const  WidgetStatePropertyAll(Size(135, 55))
      ),
      onPressed: () {}, child:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
           Text('My Cart', style: kMvBoli18,),
           Icon(Icons.shopping_cart_outlined, size: 20,)
        ],
      ));
  }
}