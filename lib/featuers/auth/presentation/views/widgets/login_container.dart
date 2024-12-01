import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/appBar/widgets/images_section.dart';
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagesSection(),
          SizedBox(
            height: 10,
          ),
          AuthenticationTextField(
            hintText: 'Phone number',
            icon: Icons.phone_outlined,
            keyboard: TextInputType.number,
          ),
          SizedBox(
            height: 20,
          ),
          AuthenticationTextField(
            hintText: 'Password',
            icon: Icons.password,
            keyboard: TextInputType.text,
          ),
          SizedBox(
            height: 30,
          ),
          AuthenticationConfigText()
        ],
      ),
    );
  }
}
