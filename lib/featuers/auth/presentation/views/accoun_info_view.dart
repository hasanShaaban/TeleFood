import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/logo.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/next_button_widget.dart';
import 'package:telefood/featuers/auth/presentation/views/widgets/textfield_widget.dart';

class AccounInfoView extends StatelessWidget {
  const AccounInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 412,
                  height: 500,
                  decoration: const BoxDecoration(
                    color: kPrimeryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(75),
                      bottomRight: Radius.circular(75),
                    ),
                  ),
                ),
                const LOGO(),
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Column(
                    children: [
                      TextFieldWidget(
                        text: 'Phone Number',
                        icon: const Icon(Icons.phone),
                        padding: 40,
                      ),
                      TextFieldWidget(
                        text: 'PassWord',
                        icon: const Icon(Icons.password),
                        padding: 40,
                      ),
                      TextFieldWidget(
                        text: 'Confirm PassWord',
                        icon: const Icon(Icons.password),
                        padding: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             const NextButtonWiget(
              text: 'Sign up',
             
            ),
          ],
        ),
      ),
    ));
  }
}
