import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/auth_config_text.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/authentication_text_field.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/location_details_textfield.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/location_dropdown_button.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/logo_section.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/photo_profile_widget.dart';

class SignupContainer extends StatelessWidget {
  const SignupContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * (7 / 9),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimeryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(75),
              bottomRight: Radius.circular(75))),
      child: Column(
        children: [
          const Align(alignment: Alignment.topLeft, child: LogoSection()),
          const PhotoProfileWidget(),
          const SizedBox(height: 20),
          AuthenticationTextField(
              hintText: 'First name', icon: Icons.mode_edit_outline_outlined),
          const SizedBox(height: 20),
          AuthenticationTextField(
              hintText: 'Last name', icon: Icons.mode_edit_outline_outlined),
          const SizedBox(height: 20),
          const LocationDropDownButton(hint: 'Select your location'),
          const SizedBox(height: 20),
          const LocationDetailsTextfield(),
          const SizedBox(height: 20),
          const AuthenticationConfigText(
              question: 'You already have an account?', respons: 'Login')
        ],
      ),
    );
  }
}
