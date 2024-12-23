import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';

class AuthenticationConfigText extends StatelessWidget {
  const AuthenticationConfigText({
    super.key,
    required this.question,
    required this.respons,
  });
  final String question;
  final String respons;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: kMvBoli14.copyWith(color: kWhiteColor),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              if (respons == 'Signup') {
                GoRouter.of(context).push(AppRouter.kSignupViewRouter);
              } else {
                GoRouter.of(context).pop();
              }
            },
            child: Text(
              respons,
              style: kMvBoli14.copyWith(color: kSecondaryColor),
            ),
          ),
        )
      ],
    );
  }
}
