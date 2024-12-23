import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_confermming_view_body.dart';

class SignupConfermmingView extends StatelessWidget {
  const SignupConfermmingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SignupConfermmingViewBody(),
    ));
  }
}
