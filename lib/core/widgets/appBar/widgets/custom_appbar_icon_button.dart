import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class CustomAppBarIconButton extends StatelessWidget {
  const CustomAppBarIconButton({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(
          icon,
          color: kSecondaryColor,
          size: 36,
        ));
  }
}