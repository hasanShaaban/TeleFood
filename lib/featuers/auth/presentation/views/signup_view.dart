import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SignupViewBody(),
    ));
  }
}
