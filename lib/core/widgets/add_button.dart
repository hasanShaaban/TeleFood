import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 178,
      left: 61,
      child: Container(
        
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          
          gradient:const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            colors: [
            kSecondaryColor,
            kTextColor
          ])
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}