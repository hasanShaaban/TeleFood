import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/dropdown_signup.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/next_button_widget.dart';
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
