import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';

class AuthenticationConfigText extends StatelessWidget {
  const AuthenticationConfigText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You don\'t have an account ?',
          style: kMvBoli14.copyWith(color: kWhiteColor),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRouter.kSignupViewRouter);
            },
            child: Text(
              'Signup',
              style: kMvBoli14.copyWith(color: kSecondaryColor),
            ),
          ),
        )
      ],
    );
  }
}
