import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class AuthenticationTextField extends StatelessWidget {
  const AuthenticationTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.keyboard,
  });
  final String hintText;
  final IconData icon;
  final TextInputType keyboard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
      child: SizedBox(
        height: 50,
        child: TextField(
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: keyboard,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(right: 30),
              hintStyle: kMvBoli20,
              prefixIcon: Icon(icon),
              hintText: hintText,
              enabledBorder: TextFieldBorder(),
              focusedBorder: TextFieldBorder(),
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
