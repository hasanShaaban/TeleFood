import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_container.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: Column(
      children: [
        SignupContainer(),
      ],
    ),);
  }
}
