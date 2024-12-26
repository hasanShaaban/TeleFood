import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';

import 'package:telefood/core/utils/constant.dart';

class NextButtonWiget extends StatelessWidget {
  final String text;

  const NextButtonWiget({
    super.key,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kSecondaryColor,
      borderRadius: BorderRadius.circular(27),
      child: MaterialButton(
        onPressed: () {
          GoRouter.of(context)
              .pushReplacement(AppRouter.kConfirmPassWordVewRouter);
        },
        minWidth: 191,
        height: 54,
        
          child: Text(
            text,
            style: kMvBoli18.copyWith(color: kWhiteColor, fontSize: 20),
          ),
        ),
      );
    
  }
}
