import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/signup_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';

// ignore: must_be_immutable
class SignupTextField extends StatefulWidget {
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
  State<SignupTextField> createState() => _SignupTextFieldState();
}

class _SignupTextFieldState extends State<SignupTextField> {
  String? error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        child: TextField(
          onChanged: (String? value) {
            if (value == null) {
              setState(() {
                error = 'this field is required';
              });
            } else if (widget.hintText == 'First name') {
              context
                  .read<SignupInfoProvider>()
                  .setFirstName(newfirstName: value.toString());
            } else if (widget.hintText == 'Last name') {
              context
                  .read<SignupInfoProvider>()
                  .setLastName(newlastName: value.toString());
            } else if (widget.hintText == 'Phone Number') {
              context
                  .read<SignupInfoProvider>()
                  .setMobile(newMobile: value.toString());
            }
            else if (widget.hintText == 'Password') {
              context
                  .read<SignupInfoProvider>()
                  .setPassword(newPassword: value.toString());
            }
            else if (widget.hintText == 'Confirme password') {
              context
                  .read<SignupInfoProvider>()
                  .setConfirmPassword(newConfrimPassword: value.toString());
            }
            
          },
          cursorColor: kSecondaryColor,
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: widget.keyboard,
          decoration: InputDecoration(
              error: error != null
                  ? Text(error.toString(), style: kCandara10)
                  : null,
              contentPadding: const EdgeInsets.only(right: 30),
              hintStyle: kMvBoli20,
              prefixIcon: Icon(widget.icon),
              prefixIconColor: kSecondaryColor,
              hintText: widget.hintText,
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: kSecondaryColor, width: 2)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.red, width: 2)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.red, width: 2)),
              fillColor: kWhiteColor,
              filled: true),
        ),
      ),
    );
  }
}
