import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

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

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height * (6 / 8),
          decoration: const BoxDecoration(
              color: kPrimeryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
        ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            shadowColor: Colors.blue,
            elevation: 10.3,
            minimumSize: const Size(150, 54),
            backgroundColor: kSecondaryColor),
        onPressed: () {},
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Login', style: kMvBoli20),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.login)
          ],
        ));
  }
}
