import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/images_section.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/auth_config_text.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/authentication_text_field.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * (6 / 9),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: kPrimeryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(75),
              bottomRight: Radius.circular(75))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ImagesSection(),
          const SizedBox(
            height: 10,
          ),
          AuthenticationTextField(
            hintText: 'Phone number',
            icon: Icons.phone_outlined,
            keyboard: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          AuthenticationTextField(
            hintText: 'Password',
            icon: Icons.password,
          ),
          const SizedBox(
            height: 30,
          ),
          const AuthenticationConfigText(question: 'You don\'t have an account?',respons: 'Signup',)
        ],
      ),
    );
  }
}
