import 'package:flutter/material.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/signup_body.dart';

class SingupView extends StatefulWidget {
  const SingupView({super.key});
  @override
  State<SingupView> createState() => _SingupViewState();
}

class _SingupViewState extends State<SingupView> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SignupBody(),
        ),
      ),
    );
  }
}
