import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_button.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_confermming_container.dart';

class SignupConfermmingViewBody extends StatelessWidget {
  const SignupConfermmingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SignupConfermmingContainer(),
        SizedBox(height: 40),
        SignupButton(),
      ],
    );
  }
}

