import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

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
