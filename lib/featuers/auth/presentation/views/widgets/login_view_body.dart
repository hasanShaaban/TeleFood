import 'package:flutter/material.dart';

import 'package:telefood/featuers/auth/presentation/views/widgets/login_button.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/login_container.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LoginContainer(),
        SizedBox(
          height: 60,
        ),
        LoginButton(),
      ],
    );
  }
}
