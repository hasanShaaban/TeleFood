import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:telefood/core/utils/app_router.dart';
import 'package:telefood/core/utils/constant.dart';
import 'package:telefood/featuers/home/presentation/views/widgets/logout_botton.dart';

class ProfileAndSetting extends StatelessWidget {
  const ProfileAndSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 37),
      child: Column(
        children: [
          Text(
            'My Profile',
            style: kMvBoli20.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.white,
          ),
          buildRow(Icons.person, 'user name'),
          buildRow(Icons.phone, '09111223'),
          const Divider(
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRouter.kEditMyProfile);
            },
            child: buildRow(Icons.edit, 'change user ifo'),
          ),
          InkWell(onTap: () {}, child: buildRow(Icons.favorite, 'favorite')),
          InkWell(
              onTap: () {},
              child: buildRow(Icons.question_mark_rounded, 'Help')),
          const Spacer(),
          const LogoutBotton()
        ],
      ),
    );
  }

  Padding buildRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: kSecondaryColor,
          ),
          const SizedBox(
            width: 7,
          ),
          Text(
            text,
            style: kMvBoli18.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
