import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/authentication_text_field.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/logo_section.dart';

class SignupConfermmingContainer extends StatelessWidget {
  const SignupConfermmingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * (5 / 9),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimeryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(75),
              bottomRight: Radius.circular(75))),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [LogoSection(), BackButton()],
          ),
          const SizedBox(height: 130),
          AuthenticationTextField(
              hintText: 'Phone Number', icon: Icons.phone_outlined),
          const SizedBox(height: 20),
          AuthenticationTextField(hintText: 'Password', icon: Icons.password),
          const SizedBox(height: 20),
          AuthenticationTextField(
              hintText: 'Confirme password', icon: Icons.check),
        ],
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_sharp,
          size: 35,
        ),
        color: kWhiteColor,
      ),
    );
  }
}
