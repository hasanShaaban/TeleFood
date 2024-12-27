import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';

class RowEditMyProfile extends StatelessWidget {
  final String firstText;
  final String secondText;
  const RowEditMyProfile({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$firstText:   ',
          style: kCandara18Bold,
        ),
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: secondText,
              hintStyle: kMvBoli20.copyWith(color: kSecondaryColor),
            ),
          ),
        ),
        const Icon(
          Icons.edit,
          color: Colors.grey,
        ),
      ],
    );
  }
}
