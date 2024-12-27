import 'package:flutter/material.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/core/widgets/add_button.dart';

class TopEditMyProfile extends StatelessWidget {
  const TopEditMyProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23, vertical: 15),
          child: Row(
            children: [
              Icon(
                Icons.mode_edit_outlined,
                color: kSecondaryColor,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Edit my profile',
                style: kMvBoli20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(116, 123, 0, 0),
              child: AddButton(),
            ),
          ],
        ),
        SizedBox(
          height: 55,
        ),
      ],
    );
  }
}
