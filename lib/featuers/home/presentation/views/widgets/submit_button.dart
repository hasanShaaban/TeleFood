import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';

import 'package:telefood/core/utils/constant.dart';

class SubmitButton extends StatelessWidget {
  final String text;

  const SubmitButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kSecondaryColor,
      borderRadius: BorderRadius.circular(27),
      child: MaterialButton(
        onPressed: () {},
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
