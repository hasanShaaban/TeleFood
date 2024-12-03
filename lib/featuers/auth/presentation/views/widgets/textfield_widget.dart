import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, this.icon, this.text, this.color, this.padding});
  Icon? icon;
  String? text;
  Color? color;
  double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding!, vertical: 8),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          filled: true,
          fillColor: color!,
          prefixIcon: icon,
          hintText: text,
          hintStyle: kMvBoli18.copyWith(color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(27),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: kSecondaryColor,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(27),
            ),
          ),
        ),
      ),
    );
  }
}
