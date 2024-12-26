import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telefood/core/providers/login_info_provider.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/manager/login_cubit/login_cubit.dart';

// ignore: must_be_immutable
class LoginPasswordField extends StatelessWidget {
  LoginPasswordField({
    super.key,
    required this.hintText,
    required this.icon,
    this.keyboard = TextInputType.text,
    this.state,
  });
  LoginFailuer? state;
  final String hintText;
  final IconData icon;
  TextInputType keyboard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        child: TextField(
          onChanged: (value) {
            context.read<LoginInfoProvider>().setPassword(newPassword: value);
          },
          cursorColor: kSecondaryColor,
          scrollPadding: EdgeInsets.zero,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: keyboard,
          decoration: InputDecoration(
            errorText: state != null ?
                      state!.errorMessage == 'the password field is required.'
                  ? state!.errorMessage
                  : null:null,
              errorStyle: kCandara10,
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
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Colors.red, width: 2)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      const BorderSide(color: Colors.red, width: 2)),
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
