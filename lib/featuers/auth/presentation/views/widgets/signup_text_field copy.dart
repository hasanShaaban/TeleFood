import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

// ignore: must_be_immutable
class SignupTextField extends StatelessWidget {
  SignupTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.keyboard = TextInputType.text,
  });
  final String hintText;
  final IconData icon;
  TextInputType keyboard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        height: 50,
        child: TextField(
          onSubmitted: (value) {
            
          },
          cursorColor: kSecondaryColor,
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: keyboard,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(right: 30),
              hintStyle: kMvBoli20,
              prefixIcon: Icon(icon),
              prefixIconColor: kSecondaryColor,
              hintText: hintText,
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: kSecondaryColor, width: 2)),
              fillColor: kWhiteColor,
              filled: true),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder TextFieldBorder() =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(25));
}
