import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class EditInfoButton extends StatelessWidget {
  const EditInfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: const Row(
        children: [
          Icon(
            Icons.edit_outlined,
            size: 24,
            color: kSecondaryColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Change user info',
            style: kMvBoli20,
          ),
        ],
      ),
    );
  }
}
