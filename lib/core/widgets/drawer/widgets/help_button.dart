import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: const Row(
        children: [
          Icon(
            Icons.help_outline,
            size: 24,
            color: kSecondaryColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Help',
            style: kMvBoli20,
          ),
        ],
      ),
    );
  }
}